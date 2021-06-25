const { generateToken, verifyToken } = require('../utils/jwt')
function checkLogin(req, res, next) {
try {
  // 特殊的。 不需要验证的接口
  if (
    req.url.startsWith('/v1/profile/emailUpdate') ) 
  {
    return next()
  }

  // 需要登录权限的 路由地址
  const urlList = [
    '/v1/profile/',           // 我的相关
    '/v1/user/addFace',
    '/v1/order/',
  ]
  const url = req.url
  let ok = urlList.some( v => url.startsWith(v))
  
  
  if ( ok ) {
    const token = req.headers.token    // token 字符串
    
    // 排除1
    if (token === undefined || token===null || token === '') {
      res.send({code:408, msg:'您未登录'})
      return
    }
    let data = verifyToken(token)

    // 排除2 - 过期 - jwt 错误
    // if (data.name === 'TokenExpiredError') {
    //   res.send({code:403, msg:'登录过期,请重新登录'})
    //   return
    // } else if (data instanceof Error) {
      
    // }
    if (data instanceof Error) {
      res.send({code:408, msg: data.name})
      return
    }

    // 排除3 - 
    if (data.isLogin !== true) {
      res.send({code:408, msg:'您未登录'})
      return
    }

    // 已登录
    req.user = data
  }

  // 经过前面的排除. 对合法请求放行
  return next()
} catch(e) {
  // 日志输出
  res.resDataError()
}}

module.exports = { checkLogin }
