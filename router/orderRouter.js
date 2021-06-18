const express           = require('express')
const utils             = require('../utils/utils')
const { collection }    = require('../utils/mongodb')
const path              = require('path')
const { ObjectId }      = require('bson')
const moment            = require('moment')
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
r.post('/reserve', async(req, res) => {
  // ---------------------------------------- 测试ＩＤ
  try {
    let uid = ObjectId('60c0ed5cce550000800047a9') //用户UID
    let rid = req.body.rid
    let oid = ObjectId()
    if (!rid) { return res.resParamsErr() }

    let {title,cover,r_params, start_time, end_time, price, name, phone } = req.body

    let where = {
      uid,
      "orders.rid": { 
        $ne: ObjectId(rid)
      }
    }
    let upObj = {
      $addToSet: {
        orders: {
          rid: ObjectId(rid),
          title,  // 店
          r_params,
          cover,
          start_time,
          end_time,
          price,
          name,  
          oid,
          phone,
          date: Date.now(),
          state: 0
        }
      }
    }
    let [err, resObj] = await utils.capture( userInfoTable.updateOne(where, upObj) )
    if (err || resObj.modifiedCount!==1) { return res.resParamsErr() }

    // OK
    res.resOk({result: {oid}})

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
  }
})

// 支付 - 需登录
r.post('/reserve/pay', async(req, res) => {
try {
  let uid = ObjectId('60c0ed5cce550000800047a9') //用户UID
 
  let { oid } = req.query
  if (!oid) {
    return res.resParamsErr()
  }
  oid = ObjectId(oid)

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
  if (err || resObj.modifiedCount!==1) { return res.resParamsErr() }

  // OK
  res.resOk({result: {}})
} catch(err) {
  res.resParamsErr()
}
})


// 获取 - 入住人信息数组
r.get('/resideinfo', async(req, res)=> {
try {
  let uid = ObjectId('60c0ed5cce550000800047a9') //用户UID
  

  let where = {
    uid
  }
  let okAttr = {
    projection: {
      _id: 0,
      info: 1,
      "info.uname":1,
      "info.id":1
    }
  }

  let [err, resObj] = await utils.capture( userInfoTable.findOne(where, okAttr ) )
  if (err) { return res.resParamsErr() }

  res.resOk({result: resObj.info})
} catch(err) {
  console.log(err)
  res.resParamsErr()
}
})

// 是否可 预定?
r.get('/is', async(req, res) => {
try {
  let start = +req.query.start
  let end   = +req.query.end
  let rid = req.query.rid || '60c164a7074200005d003192'
  if (!start || !end || !rid) {
    return res.resParamsErr()
  }
  rid = ObjectId(rid)

  const where = {
    "orders.rid": rid,
    $and: [
      { "orders.start_time": { $lt:  end} },
      { "orders.end_time": { $gt: start } }
    ] 
    
  }
  const ops = { projection: {_id:1} }
  const [err, resObj] = await utils.capture( userInfoTable.findOne(where, ops) )
  if (resObj) {
    // 有值. 说明不能预定
    res.resBadErr('不能预定') 
  } else {
    // 
    res.resOk('可以预定')
  }
} catch(err) {
  console.log(err)
  res.resParamsErr()
}
})



module.exports = r