const express           = require('express')
const utils             = require('../utils/utils')
const { collection }    = require('../utils/mongodb')
const path              = require('path')
const { ObjectId }      = require('bson')
const r = express.Router()

// 数据库集合依赖
const uLoginTable = collection('user_login')
const uInfoTable  = collection('user_info')


// 用户量 , 订单量, 总价格.
r.get('/', async(req,res) => { try {

  // 订单数
  const orderQuery = [
  {
    $unwind: "$orders"
  },
  {
    $match: {
        "orders.state": 1
    }
  }]
  
  
  // 交易额
  const priceQuery = [
    {
      $unwind: "$orders"
    },
    {
      $match: {
          "orders.state": 1
      }
    },
    {
      $group: {
        _id: "",
        total: {
          $sum: "$orders.price"
        }
      }
    }
  ]


  // 返回 promise, 数组
  let proArray = [
    uLoginTable.find({}).count(),                      // 用户数
    uInfoTable.aggregate(orderQuery).toArray(),        // 订单数
    uInfoTable.aggregate(priceQuery).toArray(),        // 交易额
  ]
  
  // 都查询完毕后
  const [totalErr, resArr] = await utils.capture( Promise.all(proArray) )
  if (totalErr) {
    return res.resDataErr('数据库错误' + totalErr.message)
  }

  // OK
  return res.resOk({
    result: {
      userCount: resArr[0],
      orderCount: resArr[1].length || 0, 
      priceTotal: resArr[2].length===0 ? 0 : resArr[2][0].total
    }
  })
  
} catch(e) {
  res.resParamsErr('代码错误' + e.message)
}})



module.exports = r