const express           = require('express')
const utils             = require('../utils/utils')
const { collection }    = require('../utils/mongodb')
const { ObjectId }      = require('bson')
const r = express.Router()

/**
 * 依赖
*/
const userInfoTable = collection('user_info')

// 点赞功能 - 需要登录
r.post('/like', async(req, res) => {
try {
  let uid = ObjectId(req.user.uid) //用户UID
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
  let uid = ObjectId(req.user.uid) //用户UID
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