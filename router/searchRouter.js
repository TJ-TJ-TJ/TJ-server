const express           = require('express')
const utils             = require('../utils/utils')
const { collection }    = require('../utils/mongodb')
const path              = require('path')
const { ObjectId }      = require('bson')
const fs = require('fs')
const r = express.Router()

// 依赖
const searchTable = collection('search')
const detailTable = collection('detail')


r.get('/hot', async(req, res) => {
try {
  let where = [
    { $group: {
      _id: '$text',
      count: {
        $sum: 1
      }
    }},
    {
      $project: {
        _id: 0,
        text: "$_id"
      }
    },
    {
      $sort: { count: -1 }
    },
    {
      $limit: 20
    }
  ]

  let [err, resArr] = await utils.capture( searchTable.aggregate(where).toArray() )

  if (err || resArr.length <= 0) {
    return res.resBadErr()
  } 

  for (let i=0; i<resArr.length; i++) {
    resArr[i] = resArr[i].text
  }
  res.resOk({result: resArr})
} catch(err) {
  console.log(err)
  res.resParamsErr()
}
})

r.post('/find', async(req, res) => {
try {
  let body = req.body
  let wd   = body.wd || ''        //  要搜索的字符串
  let wdReg = wd ? new RegExp(wd, 'i') :/./ 
  let page = (+body.page) || 1    // 第几页
  let count = (+body.count) || 15   // 每页最多几条数据
  let skip = (page-1)*count            // 跳过

  let minPrice = body.minPrice || 0
  let maxPrice = body.maxPrice || 2000
  let star = body.star || [2,3]


  let where = [
    {
      $match: {
        new_price: {
          $gte: minPrice,         // >=
          $lte: maxPrice,         // <=
        },
        star: {
          $in: star
        },
        $or: [
          { city: wdReg },
          { r_name: wdReg },
          { con_title: wdReg },
          { preferential: wdReg }
        ] 
      }
    },
    {
      $project: {
        city:1,
        swiper:1, 
        params: 1,
        r_name: 1,
        star: 1,
        label: 1,
        price: 1, new_price:1, preferential:1
      }
    },
    {
      $skip: skip
    },
    {
      $limit: count
    }
  ]
  if(wd) {
    // 有值
    where
  }

  let [err, resArr] = await utils.capture( detailTable.aggregate(where).toArray() )
  if (err || resArr.length<=0) {
    return res.resBadErr()
  }

  for (const resObj of resArr) {
    resObj.swiper = resObj.swiper[1].url
  }
  res.resOk({result: resArr})

  // 将搜索字符串放入数据库
  if (wd) {
    searchTable.insertOne({text: wd})
  }
} catch(err) {
  console.log(err)
  return res.resParamsErr()
}
})



module.exports = r