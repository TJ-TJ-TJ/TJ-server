const express           = require('express')
const utils             = require('../utils/utils')
const { collection }    = require('../utils/mongodb')
const path              = require('path')
const { ObjectId }      = require('bson')
const fs = require('fs')
const r = express.Router()


/**
 * 依赖
*/
const detailTable   = collection('detail')
const userInfoTable = collection('user_info')


r.get('/', async(req, res) => {
  res.resOk({result:'ok'})
})


// 预定 - 需登录
r.post('/reserve', async(req, res) => {try {
  
  let uid = ObjectId(req.user.uid) //用户UID
  let rid = ObjectId(req.body.rid) // 房间ID
  let oid = ObjectId()             //订单ID
  let date = Date.now()            // 下单时间
  let {title,cover,r_params, start_time, end_time, price, name, phone } = req.body

  let where = {
    uid,
    "orders.rid": { 
      $ne: rid
    }
  }
  let upObj = {
    $addToSet: {
      orders: {
        rid,   
        title,  // 店的名字
        r_params,
        cover,
        start_time,
        end_time,
        price,
        name,  // 订单人名字. 
        oid,
        phone,
        date,
        state: 0
      }
    }
  }
  let [err, resObj] = await utils.capture( userInfoTable.updateOne(where, upObj) )
  if (err || resObj.modifiedCount!==1) { return res.resParamsErr() }

  // OK
  res.resOk({result: {oid, date}})

  // 12分钟后 如果订单状态还是未支付, 删除
  setTimeout(async _=>{
    let where = {
      uid, "orders.state":0, "orders.oid":oid,
    }
    let update = {
      $pull: {
        "orders": { oid, state:0 }
      }
    }
    utils.capture( userInfoTable.updateOne(where, update) )
  }, 12*60*1000) // 12分钟
  
} catch(err) {
  res.resParamsErr()
}})

// 支付 - 需登录
r.post('/reserve/pay', async(req, res) => {
try {
  const uid = ObjectId(req.user.uid) //用户UID
  const oid = ObjectId(req.query.oid)//订单ID

  let where = {
    uid,
    "orders.oid": oid
  }
  let upObj = {
    $set: {
      'orders.$.state': 1
    }
  }

  let [err, resObj] = await utils.capture( userInfoTable.updateOne(where, upObj) )
  if (err || resObj.modifiedCount===0) { return res.resParamsErr() }

  // OK
  res.resOk()
} catch(err) {
  res.resParamsErr()
}
})

// 获取 - 入住人信息数组
r.get('/resideInfo', async(req, res)=> {
try {
  let uid = ObjectId(req.user.uid) //用户UID

  let where = {
    uid
  }
  let okAttr = {
    projection: {
      _id: 0,
      info: 1,
      "info.uname":1,
      "info.id":1,
      "info.iid":1,
    }
  }

  let [err, resObj] = await utils.capture( userInfoTable.findOne(where, okAttr ) )
  if (err || !resObj) { return res.resParamsErr({result:[]}) }

  res.resOk({result: resObj.info || []})
} catch(err) {
  res.resOk({result:[], msg:'未找到符合要求数据'})
}})

// 添加 - 入住人信息.
r.post('/addInfo', async(req, res) => {
try {
  // 模拟UID -----------------------------------------------------------
  let uid = ObjectId(req.user.uid) //用户UID
  let iid = ObjectId()
  let { uname, id } = req.body
  uname = uname.trim()
  id = id.trim()  //身份证

  const query = {
    uid,
    "info.id": {
      // 锁定当前记录
      $ne: id
    }
  }

  const insertData = {
    $addToSet: {
      info: {
        uname,
        id,
        iid,
      }
    }
  }

  const [err, resObj] = await utils.capture( userInfoTable.updateOne(query, insertData) )
  if (err || resObj.modifiedCount===0) {
    // 有误
    res.resParamsErr()
    return
  }

  // OK
  res.resOk({result: {iid} ,msg:'添加成功'})
} catch(e) {
  res.resParamsErr()
}})

// 编辑 - 入住人信息
r.put('/putInfo', async(req, res) => {
try {
  let uid = ObjectId(req.user.uid) //用户UID
  
  let { newName, newId, iId  } = req.body
  newName = newName.trim()
  newId = newId.trim()
  iId   = iId.trim()
  iId   = ObjectId(iId)

  const query = {
    uid,
    "info.iid": iId  //锁定当前uid对应的那条记录 下的特定的iid
  }
  const insertData = {
    // 修改字段
    $set: {
      "info.$.uname": newName,
      "info.$.id": newId,
    }
  }

  const [err, resObj] = await utils.capture( userInfoTable.updateOne(query, insertData) )
  if (err || resObj.modifiedCount===0) {
    return res.resParamsErr()
  }

  // OK
  res.resOk('修改成功!')
} catch(e) {
  res.resParamsErr()
}})

// 订单列表
r.get('/list', async(req, res) => {
try {
  // 最近订单

  let uid = ObjectId(req.user.uid)
  let state = +req.query.state
  let where = [
    {
      $match: {
        uid
      }
    },
    {
      $project: {
        _id: 0,
        "orders.rid": 1,
        "orders.title": 1, //房间标题
        "orders.oid": 1, //订单ID
        "orders.cover": 1, //封面图
        // "orders.name": 1,  // 
        "orders.start_time": 1,     
        "orders.end_time": 1,
        "orders.price":  1,
        "orders.state": 1
      }
    }
  ]
  

  let [err, resArr] = await utils.capture( userInfoTable.aggregate(where).toArray() )
  if (err) {
    return res.resDataErr() //数据库出错
  }
  
  // 可遍历
  resArr = resArr[0].orders
  // 可返回
  if (state === -1 || state === null || state === undefined) {
    // 全部订单
    res.resOk({result: resArr})
  }
  else if (state === 0){
    // 待支付
    const okRes =  resArr.filter(item => item.state==0)
    res.resOk({ result: okRes })
  }
  else if (state === 1){
    // 1已支付
    const okRes =  resArr.filter(item => item.state==1)
    res.resOk({ result: okRes })
  }
  else if (state === 2){
    //  2已使用
    const okRes =  resArr.filter(item => item.state==2)
    res.resOk({ result: okRes })
  }
  else if (state === 3){
    // 3已超时
    const okRes =  resArr.filter(item => item.state==3)
    res.resOk({ result: okRes })
  } else {
    // 不存在
    res.resOk({result: [], msg:'该状态不存在'})
  }

} catch(err) {
  res.resOk({result:[], msg:'未匹配到要求数据'})
}})

// 订单详情
r.get('/detail', async(req, res) => {
try {
  let { rid,oid } = req.query
  let uid = ObjectId(req.user.uid) // UID
  oid = ObjectId(oid) //订单ID
  rid = ObjectId(rid) //订单ID

  // 订单详情
  let detailWhere = [
    {
      $match: {
        _id: rid
      }
    },
    {
      $project: {
        _id: 0,
        r_name: 1,
        params: 1,
        location: 1,
        location_x: 1,
        location_y: 1,
        owner:1,
        service_id: 1, //商家ID, 将来
        cover: {
          $arrayElemAt: ['$swiper', 0]
        }
      }
    },
    
    {
      $project: {
        _id: 0,
        r_name: 1,
        params: 1,
        location: 1,
        location_x: 1,
        location_y: 1,
        service_id: 1, //商家ID, 将来
        owner:1,      // 商家信息
        cover: {
          $arrayElemAt: [ "$cover.url",0 ]
        }
      }
    }
  ]

  // 购买人信息
  let userWhere = {
    projection: {
      orders: {
        $elemMatch: {
          oid: oid
        }
      },
      _id: 0,
      "orders.name": 1,
      "orders.phone": 1,
      "orders.date": 1,
    }
  }

  const detailPromise = detailTable.aggregate(detailWhere).toArray()
  const userInfoPromise = userInfoTable.findOne({uid}, userWhere)
  const allPromise = Promise.all([detailPromise, userInfoPromise]) 
  let [err, resArr] = await utils.capture( allPromise )        // [err, [] ]
  if (err) {
    return res.resDataErr({result:{}, msg:'数据库出错'})
  }

  let str = resArr[1].orders[0].phone
  str = str.substr(0,3) + '****' + str.substr(-4)
  resArr[1].orders[0].phone = str

  // OK
  res.resOk({result: { detailInfo:resArr[0][0], userInfo: resArr[1].orders[0] }})
  // OK
} catch(err) {
  res.resOk({result:{}, msg:'未找到符合要求的'})
}})



module.exports = r