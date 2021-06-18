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
  let uid = ObjectId('60c0ed5cce550000800047a9') //用户ID 

  let _id = req.query.rid || 0    //房子ID
  _id = ObjectId(_id)
  let where = { _id }
  let [err, resObj] = await utils.capture( detailTable.findOne(where) )
  if (err || !resObj) {
    return res.resParamsErr()
  }

  // 是否收藏.
  let [err2, resObj2] = await utils.capture( userInfoTable.findOne({ uid, "collect.rid": _id }) )
  if (err2 || !resObj2) {
    resObj.isCollect = false
  } else {
    resObj.isCollect = true
  }

  res.resOk({ result: resObj })
} catch(err) {
  console.log('-------有误', err)
  res.resParamsErr()
}
})

// 点赞功能 - 需要登录
r.post('/like', async(req, res) => {
try {
  // ---------------------------------------- 测试ＩＤ
  let uid = ObjectId('60c0ed5cce550000800047a9') //用户UID
  let { rid, imgList, title, params, score, score_count, con_title,price,new_price } =
  req.body
  if (!rid) {
    return res.resParamsErr()
  }

  let upObj = {
    $addToSet:{
      collect: {
        rid:ObjectId(rid),
        imgList,
        title,
        params,
        score,
        score_count,
        con_title,
        price,
        new_price
      }
    }
  }
  let [err, resObj] = await utils.capture( userInfoTable.updateOne({uid}, upObj) )
  if (err || resObj.modifiedCount!==1) {
    return res.resParamsErr()
  }
  // 插入成功
  res.resOk()
} catch(err) {
  console.log(err)
  res.resParamsErr()
}
})

// 取消点赞功能 - 需登录
r.post('/unlike', async(req, res) => {
try {
  // ---------------------------------------- 测试ＩＤ
  let uid = ObjectId('60c0ed5cce550000800047a9') //用户UID
  let rid = req.body.rid
  if (!rid) { return res.resParamsErr() }
  rid = ObjectId(rid)

  let where = { uid }
  let deleObj = { 
    $pull: {
      "collect": { rid: rid }
    }
  }
  let [err, resObj] = await utils.capture( userInfoTable.updateOne(where, deleObj) )
  if (err || resObj.modifiedCount!==1) { return res.resParamsErr() }

  res.resOk()
} catch(err) {
  console.log(err)
  res.resParamsErr()
}
})





module.exports = r