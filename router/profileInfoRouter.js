// 账号安全 - 个人信息
const express           = require('express')
const utils             = require('../utils/utils')
const { collection }    = require('../utils/mongodb')
const { ObjectId }      = require('bson')
const { sendOneSms }    = require('../utils/sms')
const r = express.Router()
/**
 * 依赖
*/
const userInfoTable   = collection('user_info')
const userLoginTable  = collection('user_login')



// 个人资料
// r.get('/info')

/**
 * @params{ Object }, 原生 smsParams
 * query 方式传参.   uphone 字段。   res： { result:id }
*/
function sendOneSmsRouter(smsParams) {

  // 当前 手机号(ID代替) 和  短信验证码验证，是否匹配
  sendOneSmsRouter.authVerifyCode = function({id, verify}) {
    return module.successArray.find(obj => obj.id===id && obj.verify===verify)
  }

  // 删除 successArray中成功的
  sendOneSmsRouter.smsOk = function({id}) {
    const i = module.successArray.findIndex(obj => obj.id===id)
    if (i>=0) {
      module.successArray.splice(i, 1)
    }
  }


  //element: 手机号  发送过的队列  - 1分内不能重复发送
  module.phoneArray || (module.phoneArray = [])  // 可能在一个模块内 调用多次

  //element: {id:xxxxxx, verify:12345, }   成功发送验证码的队列 - 8分钟有效期
  module.successArray || (module.successArray=[])  // 可能在一个模块内 调用多次


  return async function(req,res,next) {try {
    
    let uphone    = req.query.uphone
        uphone    = uphone.trim()
        
    if (!/^1\d{10}$/.test(uphone)) {
      return res.resParamsErr('手机号格式有误')
    }

    // 1分钟内， 不能发送多次
    if (module.phoneArray.find(v => v === uphone)) {
      // 找到了，重复
      return res.resBadErr('1分钟内，不能多次发送')
    }
  
    // 1分钟内，不能多次发送
    module.phoneArray.push(uphone)
  
    // 1分钟以后取消
    setTimeout(_ => {
      const i = module.phoneArray.findIndex(v => v === uphone)
      if (i >= 0) {
        module.phoneArray.splice(i, 1)
      }
    }, 60*1000)
  
    // 参数通过
    let verify = Math.random().toString().substr(2, 5)
    
    
    let smsParamsDetail = {
      PhoneNumberSet: [`+86${uphone}`],
      TemplateId: "1006671",         // 修改密码模板
      TemplateParamSet: [verify, 8]  // 验证码， 8分钟
    }
    Object.assign(smsParamsDetail, smsParams)
    // 发送验证码
    const [err, resObj] = await sendOneSms(smsParamsDetail) // 对 reject promise已经处理了
    if (err) {
      return res.resParamsErr('未知错误')
    }
  
    if (resObj.ok == 1) {
      // OK - 返回 ID
      const id = resObj.id 
      //element: {id:xxxxxx, verify:12345, uphone:17538590302, }
      module.successArray.push({id, verify})
      // 8分钟内失效
      setTimeout(_ => {
        const i = successArray.findIndex(obj => obj.id === id)
        if (i >= 0) {
          module.successArray.splice(i, 1)
        }
      }, 8*60*1000)
      return res.resOk({result: {id}})
    } else {
      return res.resParamsErr(resObj.statusObj.Code)
    }
  } catch(e) {
    res.resParamsErr()
  }}
}


const smsParams = {
  //模板ID
  TemplateId: "1006671",

}
// 发送验证码 - query - uphone字段。 
r.get('/updateSms', sendOneSmsRouter(smsParams))



// 修改登录密码     - PUT
r.put('/pwd', async(req, res) => {
  try {
  //-提交表单: 比对 successArray， 
  //-报错数据库
  //-返回本次提交结果
  
  let uid     = ObjectId(req.user.uid)
  let upwd    = req.body.upwd.trim()
  let id      = req.body.id.trim()
  let verify  = req.body.verify.trim()
  
  
  if (upwd < 6 || upwd > 18) {
    return res.resParamsErr('密码长度6-18位')
  }
  // 全是小写字符
  if ( /^[a-z]{6,18}$/.test(upwd) ) {
    return res.resParamsErr('不能全是小写字母')
  }
  // 全是大写字母
  if ( /^[A-Z]{6,18}$/.test(upwd) ) {
    return res.resParamsErr('不能全是大写字母')
  }
  // 全是数字
  if ( /^[0-9]{6,18}$/.test(upwd) ) {
    return res.resParamsErr('不能全是数字')
  }
  // 包含特殊字符
  if (!/^[0-9a-zA-Z._]{6,18}$/.test(upwd)) {
    return res.resParamsErr('不能包含特殊字符')
  }
  
  // 密码通过
  // 短信验证码进行验证。   id -  verify
  const authOk = sendOneSmsRouter.authVerifyCode({id, verify})

  if (authOk) {
    // 有值， 保存数据库
    const query = {
      _id: uid
    }
    const upObj = {
      $set: {
        upwd
      }
    }

    const [err, resObj] = await utils.capture( userLoginTable.updateOne(query, upObj) )
    if (err || resObj.modified===0) {
      return res.resBadErr('修改失败')
    }
    // OKOK
    res.resOk('修改成功')
    sendOneSmsRouter.smsOk({id})
  } else {
    // 超时
    res.resBadErr('验证码过期，请重试')
  }
  
  //---------- END
} catch(e) {
  res.resParamsErr('代码出错')
  console.log(e)
}})


// 邮箱绑定


// 修改用户名        - PUT
r.put('/uname',async(req,res) => {try {
  let uid   = ObjectId(req.user.uid)
  let uname = req.query.uname.trim()
  if (!/^\w{4,12}$/.test(uname)) { return res.resParamsErr('用户名4-12位字母数字_') }
  let infoQuery = { uid }
  let loginQuery = { _id: uid }
  let upData = { 
    $set: {
      uname: uname
    }
  }
  

  const promise1 = userInfoTable.updateOne(infoQuery, upData)
  const promise2 = userLoginTable.updateOne(loginQuery, updateOne)
  const [err, resArr] = utils.capture( Promise.all([promise1, promise2]) )
  if (err) {
    return res.resBadErr('修改失败')
  }


  if ( resArr[0].modifiedCount===0 || 
    resArr[1].modifiedCount===0 
  ) {
    return res.resBadErr('修改失败,请重试')
  }

  // OK
  res.resOk('修改成功')

} catch(e) {
  res.resParamsErr('代码出错,参数不符合')
}})


module.exports = r