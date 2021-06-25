const express           = require('express')
const { verifyToken }   = require('../utils/jwt')
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

 
/** 是否可以预定
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

    // 全局中间件 - 没有拦截.  手动获取  uid
    let uid = verifyToken(req.headers['token']).uid
        uid = ObjectId(uid)
    
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
  res.resParamsErr('代码错误' + err.message)
}})


// 是否可 预定?
r.get('/is', async(req, res) => { try {

  let start = +req.query.start
  let end   = +req.query.end
  let rid = req.query.rid
  if (!start || !end || !rid) {
    return res.resParamsErr('缺少query参数')
  }
  rid = ObjectId(rid)


  // 可以查询
  if (!await isReserve({start_time:start, end_time:end, rid})) {
    return res.resBadErr('当前房源已预定')
  }
  // 可以预定
  res.resOk()
  
} catch(err) {
  res.resParamsErr(err)
}})




module.exports = r