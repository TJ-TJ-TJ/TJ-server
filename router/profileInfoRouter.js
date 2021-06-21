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
const phoneArray      = []  //element: 手机号                        手机号  // 发送过的队列
const successArray    = []  //element: {id:xxxxxx, verify:12345, }   ID 验证码 手机号  // 成功发送验证码的队列

// 个人资料
// r.get('/info')

// 发送验证码     --- 待封装
r.get('/updateSms', async(req,res) => {
  let uphone    = req.query.uphone
      uphone    = uphone.trim()

  if (!/^1\d{10}$/.test(uphone)) {
    return res.resParamsErr('手机号有误')
  }
  // 1分钟内， 不能发送多次
  if (phoneArray.find(v => v === uphone)) {
    // 找到了，重复
    return res.resBadErr('1分钟内，不能多次发送')
  }

  // 1分钟内，不能多次发送
  phoneArray.push(uphone)

  // 1分钟以后取消
  setTimeout(_ => {
    const i = phoneArray.findIndex(v => v === uphone)
    if (i >= 0) {
      phoneArray.splice(i, 1)
    }
  }, 60*1000)

  // 参数通过
  let verify = Math.random().toString().substr(2, 5)
  let smsParams = {
    PhoneNumberSet: [`+86${uphone}`],
    TemplateId: "1006671",         // 修改密码模板
    TemplateParamSet: [verify, 8]  // 验证码， 8分钟
  }
  // 发送验证码
  const [err, resObj] = await sendOneSms(smsParams) // 对 reject promise已经处理了
  if (err) {
    return res.resParamsErr('未知错误')
  }

  if (resObj.ok == 1) {
    // OK - 返回 ID
    const id = resObj.id 
    //element: {id:xxxxxx, verify:12345, uphone:17538590302, }
    successArray.push({id, verify})
    // 8分钟内失效
    setTimeout(_ => {
      const i = successArray.findIndex(obj => obj.id === id)
      if (i >= 0) {
        successArray.splice(i, 1)
      }
    }, 8*60*1000)
    return res.resOk({result: {id}})
  } else {
    return res.resParamsErr(resObj.statusObj.Code)
  }

})


// 修改登录密码     - PUT
r.put('/updatePwd', async(req, res) => {
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
  // 对比successArray
  let findPhone = successArray.find(obj => obj.id===id && obj.verify===verify)

  if (findPhone) {
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
  } else {
    // 超时
    res.resBadErr('验证码过期，请重试')
  }
  
  //---------- END
} catch(e) {
  res.resParamsErr()
}})


// 邮箱绑定



module.exports = r