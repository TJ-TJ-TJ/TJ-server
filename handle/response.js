

/**
 * 参数错误, 为 res 对象添加 参数不合法 响应体封装
 * code: 400
 * ok:   0
 * msg:  '参数不合法'
*/
function resParamsErr(req, res, next) {
  function fun(args) {
    if (typeof args === 'string') {
      // 修改 msg参数
      res.status(400).send({ ok:0, code:400, msg: args })
      return
    }

    if (typeof args === 'object' && args!==null) {
      args.code || (args.code=400)
      args.ok || (args.ok=0)
      args.msg || (args.msg= '参数不符合要求')
      res.status(args.code).send(args)
      return
    }

    if (typeof args === 'undefined') {
      res.status(400).send({ ok:0, code:400, msg: '参数不符合要求' })
      return
    }
  }
  res.resParamsErr = fun
  next()
}


/**
 * 数据库错误, 为 res 对象添加 数据库语法错误 响应体封装
 * code: 500
 * ok  : -100
 * msg : '数据库出错'
*/
function resDataErr(req, res, next) {
  // 挂载到 res中
  let fun = args=> {
    if (typeof args === 'string') {
      // 修改 msg参数
      res.status(500).send({ ok:-100, code:500, msg:args })
      return
    }

    // 传递对象
    if (typeof args === 'object' && args!==null) {
      args.code || (args.code=500)
      args.ok || (args.ok=-100)
      args.msg || (args.msg='数据库有误')
      res.status(args.code).send(args)
      return
    }

    // 默认情况
    if (typeof args === 'undefined') {
      res.status(500).send({ ok:-100, code:500, msg:'数据库有误' })
      return
    }
  }

  res.resDataErr = fun
  next()
}


/**
 * 参数通过, 数据库通过, 但不满足业务需求
 * code: 202
 * ok  : -1
 * msg : '请更换信息'
*/
function resBadErr(req, res, next) {
  // 挂载到 res中
  let fun = args=> {
    if (typeof args === 'string') {
      // 修改 msg参数
      res.status(202).send({ ok:-1, code:202, msg:args })
      return
    }

    // 传递对象
    if (typeof args === 'object' && args!==null) {
      args.code ||(args.code=202)
      if (args.ok === undefined || args.ok === null) {
        args.ok = -1
      }
      args.msg || (args.msg='请更换信息')
      res.status(args.code).send(args)
      return
    }

    // 默认情况
    if (typeof args === 'undefined') {
      res.status(202).send({ ok:-1, code:202, msg:'请更换信息' })
      return
    }
  }

  res.resBadErr = fun
  next()
}


/**
 * OK, 
 * code: 200
 * ok  : 1
 * msg : 'ok'
*/
function resOk(req, res, next) {
  // 挂载到 res中
  let fun = args=> {
    if (typeof args === 'string') {
      // 修改 msg参数
      res.send({ ok:1, code:200, msg:args })
      return
    }

    // 传递对象
    if (typeof args === 'object' && args!==null) {
      args.code || (args.code=200)
      if (args.ok===undefined || args.ok===null) {
        args.ok = 1
      }
      args.msg || (args.msg='ok')
      res.send(args)
      return
    }

    // 默认情况
    if (typeof args === 'undefined') {
      res.send({ ok:1, code:200, msg:'ok' })
      return
    }
  }

  res.resOk = fun
  next()
}


// function resNotFound(req, res, next) {
//   // 挂载到 res中
//   let fun = args=> {
//     if (typeof args === 'string') {
//       // 修改 msg参数
//       res.send({ ok:1, code:200, msg:args, result: })
//       return
//     }

//     // 传递对象
//     if (typeof args === 'object' && args!==null) {
//       args.code || (args.code=200)
//       if (args.ok===undefined || args.ok===null) {
//         args.ok = 1
//       }
//       args.msg || (args.msg='ok')
//       res.send(args)
//       return
//     }

//     // 默认情况
//     if (typeof args === 'undefined') {
//       res.send({ ok:1, code:200, msg:'未找到当前资源' })
//       return
//     }
//   }

//   res.resOk = fun
//   next()
// }

module.exports = {
  resParamsErr, resDataErr, resBadErr, resOk
}