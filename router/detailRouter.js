const express           = require('express')
const utils             = require('../utils/utils')
const { collection }    = require('../utils/mongodb')
const path              = require('path')
const { ObjectId }      = require('bson')
const r = express.Router()

/**
 * 依赖
*/
const detailTable = collection('detail')
const userInfoTable = collection('user_info')

// 详情
r.get('/',async (req, res) => {
try {
  
  let _id = req.query.rid || 0    //房子ID
  _id = ObjectId(_id)
  let where = { _id }
  let [err, resObj] = await utils.capture( detailTable.findOne(where) )
  if (err || !resObj) {
    return res.resParamsErr()
  }

  // 是否收藏.
  try {
    let uid = ObjectId(req.user.uid)
    let [err2, resObj2] = await utils.capture( userInfoTable.findOne({ uid, "collect.rid": _id }) )
    if (err2 || !resObj2) {
      resObj.isCollect = false
    } else {
      resObj.isCollect = true
    }
  } catch(e) {
    resObj.isCollect = false
  }

  res.resOk({ result: resObj })
} catch(err) {
  console.log('-------有误', err)
  res.resParamsErr()
}
})

// 是否可 预定?
r.get('/is', async(req, res) => {
try {

  let start = +req.query.start
  let end   = +req.query.end
  let rid = req.query.rid
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
  res.resParamsErr('参数有误')
}})




module.exports = r