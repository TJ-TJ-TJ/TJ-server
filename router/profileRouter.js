const express           = require('express')
const utils             = require('../utils/utils')
const { collection }    = require('../utils/mongodb')
const { ObjectId }      = require('bson')
const r = express.Router()

/**
 * 依赖
*/
const userInfoTable = collection('user_info')

// 获收藏列表 - GET
r.get('/collect', async(req, res) => {
try {
  let uid = ObjectId(req.user.uid)
  const query = {
    uid
  }
  const project = {
    projection:{
      collect:1,
      _id: 0,
    }
  }

  const [err, resObj] = await utils.capture( userInfoTable.findOne(query, project) )

  if (err || !resObj) {
    return res.resBadErr({result:[], msg:'数据库错误'})
  }

  // OK
  res.resOk({result: resObj.collect || []})
  //ok
} catch(e) {
  res.resOk({result:[], msg:'空'})
}})

// 加入收藏   - POST
r.post('/collect', async(req, res) => {
try {
  let uid = ObjectId(req.user.uid) //用户UID
  let { rid, imgList, title, params, score, score_count, con_title,price,new_price } =
  req.body
  if (!rid) {
    return res.resParamsErr('rid缺少')
  }

  let upObj = {
    $addToSet:{
      collect: {
        rid:ObjectId(rid),
        imgList,
        title,
        params,
        score,   //动态
        score_count, //动态
        con_title,
        price,
        new_price
      }
    }
  }
  let [err, resObj] = await utils.capture( userInfoTable.updateOne({uid}, upObj) )
  if (err) {
    return res.resParamsErr('数据库出错'+err.message)
  }
  if (resObj.modifiedCount === 0) {
    return res.resBadErr('重复插入')
  }

  // 插入成功
  res.resOk()
  // OK
} catch(err) {
  res.resParamsErr('代码有误'+err.message)
}})

// 取消收藏   - DELETE
r.delete('/collect', async(req, res) => {
try {
  let uid = ObjectId(req.user.uid) //用户UID
  let rid = req.body.rid
  if (!rid) { return res.resParamsErr(rid) }
  rid = ObjectId(rid)

  let where = { uid }
  let deleObj = { 
    $pull: {
      "collect": { rid }
    }
  }
  let [err, resObj] = await utils.capture( userInfoTable.updateOne(where, deleObj) )
  if (err) { return res.resParamsErr() }
  if (resObj.modifiedCount===0) { return res.resBadErr('没有这样的数据') }

  res.resOk()
} catch(err) {
  res.resParamsErr(err.message)
}})




// 添加历史   - POST
r.post('/history',async(req,res) => {
try {
  let uid = ObjectId(req.user.uid)
  let { rid, imgList, title, params, score, score_count, con_title,price,new_price } = req.body
  rid = ObjectId(rid)
  const query = {
    uid,
    "history.rid": {
      $ne: rid
    }
  }
  const insertData = {
    $addToSet:{
      history: {
        rid,
        imgList,
        title,
        params,
        score,   //动态
        score_count, //动态
        con_title,
        price,
        new_price
      }
    }
  }

  const [err, resObj] = await utils.capture( userInfoTable.updateOne(query, insertData) )

  if (err || resObj.modifiedCount === 0) {
    return res.resBadErr()
  }

  // OK
  res.resOk('添加成功')
  // OK
} catch(e) {
  res.resParamsErr('代码出错')
}})

// 删除收藏   - DELETE
r.delete('/history', async(req, res) => {
try {
  let uid = ObjectId(req.user.uid)
  let rid = ObjectId(req.query.rid)
  const query = { uid }
  const del = {
    $pull: {
      "history": { rid }
    }
  }

  const [err, resObj] = await utils.capture( userInfoTable.updateOne(query, del) )
  if (err || resObj.modifiedCount === 0){
    return res.resBadErr('删除失败')
  }

  // OK
  res.resOk('删除成功')

  ///////
} catch(e){
  res.resParamsErr()
}})

// 获取浏览历史列表  - GET
r.get('/history', async(req,res) => {
try {
  let uid = ObjectId(req.user.uid)
  const query = {
    uid
  }
  const project = {
    projection:{
      history: 1,
      _id: 0,
    }
  }

  const [err, resObj] = await utils.capture( userInfoTable.findOne(query, project) )

  if (err || !resObj) {
    return res.resBadErr({result:[]})
  }

  // OK
  res.resOk({result: resObj.history || []})
  // OK
} catch(e) {
  res.resOk({result:[], msg: '空,参数不合格'})
}})

module.exports = r