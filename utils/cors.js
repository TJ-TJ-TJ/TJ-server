let cors = (req, res, next) => {
  let headers = req.headers 
  // 目前是允许所有的跨域请求
  // 请求白名单 - 可以拦截服务器请求
  let okOriginArr = [
    'http://127.0.0.1',
    'https://127.0.0.1',
    'http://localhost',
    'https://localhost'
  ]
  // !okOriginArr.includes(headers.origin)
  if ( false ) {
    //不在白名单
    return res.send({code: 400, msg: '您不在白名单非法请求'})
  }

  // 简单请求
  res.setHeader('Access-Control-Allow-Origin', headers['origin'] || headers['Origin']  ||'*')
  if (req.method === 'OPTIONS') {
    res.setHeader('Access-Control-Allow-Headers', headers['access-control-request-headers'] || headers['Access-Control-Request-Headers'] )
    res.setHeader('Access-Control-Allow-Methods', 'POST,GET,PUT,DELETE,OPTIONS')
    // 将预请求的结果缓存, 秒单位
    res.setHeader('Access-Control-Max-Age', 3600*24*7)
    return res.end()
  }
  next()
}

module.exports = cors