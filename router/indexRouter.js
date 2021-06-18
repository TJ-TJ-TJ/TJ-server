const express           = require('express')
const utils             = require('../utils/utils')
const { collection }    = require('../utils/mongodb')
const path              = require('path')
const { ObjectId }      = require('bson')
const r = express.Router()

//依赖
const detailTable = collection('detail')



// 首页
r.get('/list', async(req, res) => {
try {
  let page = (+req.query.page) || 1       // 第几页
  let count = (+req.query.count) || 15    // 每页最多几条数据
  let skip = (page-1)*count               // 跳过
  const date = new Date()
  date.setHours(12)
  date.setMinutes(0)
  date.setSeconds(0)
  const start = date.getTime()
  const end   = date.setDate( date.getDate()+1 )
  

  const where = {
    $project: {
      location:1,  r_name: 1, start:1, label: 1, preferential:1, 
      price:1, new_price:1, swiper:1, params: 1, star:1, con_title:1,
    }
  }
  
  let [err, resArr] = await utils.capture( detailTable.aggregate([where]).skip(skip).limit(count).toArray() )

  resArr.forEach(item => {
    item.swiper = item.swiper[0].url[0]
  })

  res.resOk({result: resArr})
} catch(err) {
  res.resParamsErr()
}
})

module.exports = r