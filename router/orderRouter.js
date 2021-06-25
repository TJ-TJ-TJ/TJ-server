const express           = require('express')
const utils             = require('../utils/utils')
const { collection }    = require('../utils/mongodb')
const path              = require('path')
const { ObjectId }      = require('bson')
const r = express.Router()


/**
 * 依赖
*/
const detailTable   = collection('detail')
const userInfoTable = collection('user_info')

/**
 * @params { start_time, end_time } Number
 * @params { rid }                  ObjectId类型
 * @result { Boolean } true,可以预定;
*/
async function isReserve({start_time, end_time, rid}) {
try {
  start_time = Number(start_time)
  end_time   = Number(end_time)
  const where = [
    {
      $unwind: '$orders'
    },
    {
      $match: {
        "orders.rid": rid,
        "orders.start_time": { $lt:  end_time},
        "orders.end_time": { $gt: start_time }
      } // 找到这一条记录
    },
    {
      $project:{
        _id:1,
      }
    }
  ]
  const [err, resArr] = await utils.capture( userInfoTable.aggregate(where).toArray() )
  if (resArr.length >= 1) {
    // 有值. 说明不能预定
    return false
  } else {
    // 可以预定
    return true
  }
} catch(err) {
  return false
}}


// 预定 - 需登录
r.post('/reserve', async(req, res) => {try {
  
  let uid = ObjectId(req.user.uid) //用户UID
  let rid = ObjectId(req.body.rid) // 房间ID
  let oid = ObjectId()             //订单ID
  let date = Date.now()            // 下单时间
  let {title,cover,r_params, start_time, end_time, price, name, phone } = req.body
  start_time = Number(start_time)
  end_time = Number(end_time)

  const reserve = await isReserve({start_time, end_time, rid})
  if (!reserve) {
    // 不能预定
    return res.resBadErr('当前房源已被预定!')
  }

  
  // 逻辑有误.   
  let where = {
    uid,
    // "orders.rid": {
    //   $ne: rid
    // }   致命BUG rid房间ID
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
  if (err) { return res.resParamsErr(err.message) }
  if (resObj.modifiedCount === 0) { return res.resBadErr('预定失败,已被他人预定') }

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
    userInfoTable.updateOne(where, update)
  }, 12*60*1000) // 12分钟
  
} catch(err) {
  res.resParamsErr('代码出错' + err.message)
}})

// 支付 - 需登录
r.post('/reserve/pay', async(req, res) => {
try {
  const uid = ObjectId(req.user.uid) //用户UID
  const oid = ObjectId(req.query.oid)//订单ID

  let where = {
    uid,
    "orders.oid": oid, 
    "orders.state": 0,
  }
  let upObj = {
    $set: {
      'orders.$.state': 1
    }
  }

  let [err, resObj] = await utils.capture( userInfoTable.updateOne(where, upObj) )
  if (err) { return res.resBadErr('数据库出错'+err.message) }
  if (resObj.modifiedCount===0) { return res.resBadErr('您想重复支付吗') }


  // OK
  return res.resOk()
} catch(err) {
  res.resParamsErr('代码出错'+err.message)
}})

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

  // END -------
} catch(err) {
  res.resOk({result:[], msg:err.message})
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
  if (err) {
    return res.resParamsErr('数据库错误'+err.message)
  }

  if (resObj.modifiedCount===0) {
    return res.resBadErr('没有添加成功.')
  }

  // OK
  res.resOk({result: {iid} ,msg:'添加成功'})
} catch(e) {
  res.resParamsErr('代码出错'+e.message)
}})

// 编辑 - 入住人信息
r.put('/putInfo', async(req, res) => { try {
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
  if (err) {
    return res.resParamsErr('数据库错误'+err.message)
  }
  if (resObj.modifiedCount===0) {
    return res.resBadErr('没有匹配项')
  }

  // OK
  res.resOk('修改成功!')
} catch(e) {
  res.resParamsErr('代码出错'+e.message)
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
    return res.resDataErr('数据库出错'+err.message) //数据库出错
  }
  
  // 可遍历
  resArr = resArr[0].orders
  // 可返回
  if (
    state === -1 || 
    state === null || 
    state === undefined ||
    state === ''
  ) {
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
  res.resOk({result:[], msg:err.message})
}})

// 订单删除
r.delete('/delete', async(req, res) => { try {
  // 传递. oid

  let uid = ObjectId(req.user.uid)
  let oid = ObjectId(req.body.oid)

  const query = {
    uid
  }
  const upObj = {
    // 删除数组中某个元素 可以是元素对象
    $pull: {
      orders: {
        oid: oid
      }
    }
  }
  const [err, resObj] = await utils.capture( userInfoTable.updateOne(query, upObj) )
  if (err) {
    return res.resBadErr('服务器遇到错误'+err)
  }

  if (resObj.modifiedCount === 0) {
    return res.resBadErr('删除失败')
  }

  // OK
  return res.resOk('删除成功')

  //---------------------- END
} catch(e) {
  res.resParamsErr(e.message)
}})

// 订单详情
r.get('/detail', async(req, res) => { try {
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
        new_price: 1,
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
        new_price: 1,
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
      "orders.price": 1, //支付价格
      "orders.oid": 1,
      "orders.name": 1,
      "orders.phone": 1,
      "orders.date": 1,
      "orders.state": 1,
      "orders.start_time": 1,
      "orders.end_time": 1,
    }
  }

  // 订单状态
  const detailPromise = detailTable.aggregate(detailWhere).toArray()
  const userInfoPromise = userInfoTable.findOne({uid}, userWhere)
  const allPromise = Promise.all([detailPromise, userInfoPromise]) 
  let [err, resArr] = await utils.capture( allPromise )        // [err, [] ]
  if (err) {
    return res.resDataErr({result:{}, msg:err.message})
  }

  let str = resArr[1].orders[0].phone
  str = str.substr(0,3) + '****' + str.substr(-4)
  resArr[1].orders[0].phone = str

  // OK
  res.resOk({result: { detailInfo:resArr[0][0], userInfo: resArr[1].orders[0] }})

  // OK
} catch(err) {
  res.resOk({result:{}, msg:err.message})
}})



module.exports = r