const express         =   require('express')
const path            =   require('path')
const compression     =   require('compression')


/**
 * 路由引入     
*/
const indexRouter     = require('./router/indexRouter')
const detailRouter    = require('./router/detailRouter')
const userRouter      = require('./router/userRouter')
const searchRouter    = require('./router/searchRouter')
const orderRouter     = require('./router/orderRouter')
const profileRouter   = require('./router/profileRouter')       
const profileSafeRouter = require('./router/profileSafeRouter') //安全信息，密码这类
const profileInfoRouter = require('./router/profileInfoRouter') //个人信息，昵称,姓名,年龄等

const dataCollectRouter = require('./router/dataCollectRouter')  // 后台数据统计

/**
 * 全局中间件引入 
*/

const cors            = require('./utils/cors')
const bodyParser      = require('body-parser')
const notFound        = require('./handle/notFound')
const { checkLogin }  = require('./handle/checkLogin')
const { resParamsErr, resDataErr, resBadErr, resOk } = require('./handle/response')


/**
 * 全局 配置      ----------------
*/
console.clear()
const PORT = 80
const app = express()
const gzipFilter = {
  filter(req, res) {
    const contentType = res.getHeader('Content-Type') || ''
    if (
      (contentType.indexOf('text/') !==-1) ||
      (contentType.indexOf('application/json') !== -1) ||
      (contentType.indexOf('application/javascript') !== -1)
    ) {
      return true
    }
  }
}

/**
 * 全局 中间件调用 ----------------
*/
app.use(cors)
app.use(compression(gzipFilter))
app.use('/public', express.static(path.join(__dirname, 'public/')) )
app.use(bodyParser.json())
// 封装 res响应体的 msg,code内容
app.use(resParamsErr, resDataErr, resBadErr, resOk)
// 检测登录状态 - 中间件
app.use(checkLogin)


/**
 * 路由调用 ---------------------
*/
app.use('/v1/index',indexRouter)
app.use('/v1/details', detailRouter)
app.use('/v1/user', userRouter)
app.use('/v1/search', searchRouter)
app.use('/v1/order', orderRouter)
app.use('/v1/profile', profileRouter, profileSafeRouter, profileInfoRouter)
app.use('/v1/dataCollect', dataCollectRouter)
app.use(notFound)


app.listen(PORT, _ => {
  console.log(PORT + '端口开启成功');
})

