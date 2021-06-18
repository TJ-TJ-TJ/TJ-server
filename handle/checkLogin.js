const { generateToken, verifyToken } = require('../utils/jwt')
function checkLogin(req, res, next) {

  // if (req.url.startsWith('/v1/profile/') || 
  //     req.url.startsWith('/v1/user/addface')) {
  //   const token = req.header('token')    // token 字符串

  //   // 排除1
  //   if (token === undefined || token===null) {
  //     res.send({code:403, msg:'您未登录'})
  //     return
  //   }
  //   let data = verifyToken(token)

  //   // 排除2
  //   if (data.name === 'TokenExpiredError') {
  //     res.resBadErr('登录过期,请重新登录')
  //     return
  //   }

  //   // 排除3
  //   if (data.isLogin !== true) {
  //     res.send({code:403, msg:'您未登录'})
  //     return
  //   }

  //   // 已登录
  //   req.user = data
  // }

  // 经过前面的排除. 对合法请求放行
  return next()
}

module.exports = { checkLogin }
