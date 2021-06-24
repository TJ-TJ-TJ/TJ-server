// 账号安全页面
const express           = require('express')
const nodemailer        = require('nodemailer')
const { generateToken, verifyToken } = require('../utils/jwt')
const utils             = require('../utils/utils')
const { collection }    = require('../utils/mongodb')
const { ObjectId }      = require('bson')
const { sendOneSms }    = require('../utils/sms') // sendOneSmsRouter 依赖
const r = express.Router()
/**
 * 依赖
*/
const userInfoTable   = collection('user_info')
const userLoginTable  = collection('user_login')

// 邮箱配置
const transporter = nodemailer.createTransport({
  host: 'smtp.163.com', // 这是腾讯的邮箱 host
  port: 465, // smtp 端口
  secureConnection: true,
  auth: {
    user: 'gaowujie2019', // 发送邮件的邮箱名
    pass: 'PMRYKCAMVGYXCPJS', // 邮箱的授权码，也可以使用邮箱登陆密码
  },
})



/**
 * @params{ Object }, 原生 smsParams
          TemplateId: "1009319", 默认        // 通用模板
*/
function sendOneSmsRouter(smsParams) {

  // 当前 手机号(ID代替) 和  短信验证码验证，是否匹配
  sendOneSmsRouter.authVerifyCode = function({id, verify}) {
    return module.successArray.find(obj => obj.id===id && String(obj.verify)=== String(verify) )
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
    
    let uphone    = req.query.uphone || req.query.phone || req.body.uphone || req.body.phone
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
      TemplateId: "1009319",         // 通用默认模板
      TemplateParamSet: [verify, 8]  // 验证码， 8分钟
    }
    Object.assign(smsParamsDetail, smsParams)
    // 发送验证码
    const [err, resObj] = await sendOneSms(smsParamsDetail) // 对 reject promise已经处理了
    if (err) {
      return res.resParamsErr('未知错误 短信发送失败')
    }
  
    if (resObj.ok == 1) {
      // OK - 返回 ID
      const id = resObj.id 
      //element: {id:xxxxxx, verify:12345, uphone:17538590302, }
      module.successArray.push({id, verify})
      // 8分钟内失效
      setTimeout(_ => {
        const findId = id
        const i = module.successArray.findIndex(obj => obj.id===findId)
        if (i >= 0) {
          module.successArray.splice(i, 1)
        }
      }, 8*60*1000)
      return res.resOk({result: {id}})
    } else {
      return res.resParamsErr('短信发送失败'+resObj.statusObj.Code)
    }
  } catch(e) {
    res.resParamsErr(e)
  }}
}


// 零、公共的
// 发送验证码 - query - uphone字段。 
r.get('/sendSms', sendOneSmsRouter())

// 零、获取安全信息      - GET
r.get('/safeInfo', async(req,res) => { try {
  let _id = ObjectId(req.user.uid)
  let query = {_id}
  let need = {
    projection:{ //需要哪些字段
      _id: 0, //uid
      uname: 1,
      uphone: 1,
      umail: 1
    }
  }

  const [err, resObj] = await utils.capture( userLoginTable.findOne(query, need) )
  if (err) {
    return res.resBadErr(err.message)
  }
  if (!resObj) {
    return res.resBadErr('空的结果')
  }

  // OK 某些字段可能还没有值
  // if (resObj.uphone) {
  //   resObj.uphone = resObj.uphone.substr(0,3) + '****' + resObj.uphone.substr(-4)
  // }
  return res.resOk({result: resObj})

  // END----------------
} catch(e) {
  return res.resParamsErr('代码错误'+e.message)
}})


// 一、修改用户名        - PUT
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
  const promise2 = userLoginTable.updateOne(loginQuery, upData)
  const [err, resArr] = await utils.capture( Promise.all([promise1, promise2]) )
  if (err) {
    return res.resBadErr('数据库出错'+err.message)
  }


  if ( resArr[0].modifiedCount===0 || 
    resArr[1].modifiedCount===0 
  ) {
    return res.resBadErr('请勿重复修改')
  }

  // OK
  res.resOk('修改成功')

} catch(e) {
  res.resParamsErr('代码出错,参数不符合'+e.message)
}})




// 二、修改手机号 开始修改       - PUT
r.put('/phone', async(req,res) => { try {
  // 携带 id , verify， newPhone
  let uid = ObjectId(req.user.uid)
  let {id, verify, newPhone} = req.body
  if (
    !/^1\d{10}$/.test(newPhone) )
  {
    return res.resParamsErr('手机号格式有误')
  }


  // id 和 验证码 是否匹配
  if (
    !sendOneSmsRouter.authVerifyCode({id, verify}) ){
    return res.resBadErr('验证码错误')
  }

  // 更改数据库
  const query = { _id: uid }
  const update = { $set: { uphone: newPhone} }

  let [err, resObj] = await utils.capture( userLoginTable.updateOne(query, update) )
  if (err) {
    return res.resBadErr('修改失败')
  }

  if (resObj.modifiedCount===0) {
    return res.resBadErr('不要重复点击')
  }

  // Ok
  sendOneSmsRouter.smsOk({id}) //删除
  return res.resOk()

  // END___------
} catch(e) {
  res.resParamsErr('代码有误'+e)
}})
// 发送短信验证码



// 三、绑定邮箱                 -  PUT


// 发送邮箱验证 - 点击链接
r.get('/sendEmail', (req,res) => {
  
  let email = req.query.email
  if ( !/^\w+@\w+[.][a-z]+$/.test(email) ) {
    return res.resParamsErr('邮箱格式错误')
  }

  let tokenData = {
    uid: req.user.uid,   // 用户ID， 是哪个用户的
    umail: email,
    isOk: true
  } 
  let url = 'https://tj.testw.top/v1/profile/emailUpdate?token='+generateToken(tokenData)
  let text  = `尊敬的用户，
  您好！欢迎您成为我们的会员！
  
  你的邮箱还没有验证！验证完成后可以使用此邮箱号登录，请<b>点击<b>以下链接验证您的邮箱：
  <h4>
  <a href="${url}">${url}<a>
  </h4>
  
  (如无法点击此链接，请手工将链接复制至浏览器地址栏打开)`
  
  transporter.sendMail(
  {
    from: 'gaowujie2019@163.com', // 发送人邮箱   必须要和 对应邮箱一直的授权码
    to: email, // 接收人邮箱，多个使用数组或用逗号隔开
    subject: '途家北京版。', // 主题
    html: text, // 邮件正文 可以为 HTML 或者 text 
  },
  (err, info) => {
    if (err) {
      return res.resDataErr(err)
    }
    return res.resOk('发送成功,注册查收')
  })
})

// 通过验证后绑定邮箱
r.get('/emailUpdate', async(req,res) => {
  const tokenData = verifyToken(req.query.token) || {}
  if (tokenData.isOk!==true) {
    return res.send('<h1>验证过期，请再次提交验证</h1>')
  }

  // token通过
  const query = {_id: ObjectId(tokenData.uid)}
  const update = { $set:{ umail: tokenData.umail } }
  const [err, resObj] = await utils.capture( userLoginTable.updateOne(query, update) )
  if (err) {
    return res.send(`<h1>验证失败${err.message}</h1>`)
  }
  if (resObj.modifiedCount === 0) {
    return res.send(`<h1>验证失败${'修改失败'}</h1>`)
  }

  // OK
  res.send('<h1 style="color:rgb(68, 211, 159);"><img src="https://img0.baidu.com/it/u=1891268412,1488093108&fm=26&fmt=auto&gp=0.jpg">验证成功<h1>')
})



// 四、修改密码
r.put('/pwd', async(req, res) => {
  try {
  //-提交表单: 比对 successArray， 
  //-报错数据库
  //-返回本次提交结果
  
  let uid     = ObjectId(req.user.uid)
  let newPwd  = req.body.newPwd.trim()
  let id      = req.body.id.trim()
  let verify  = req.body.verify.trim()
  
  
  if (newPwd.length < 6 || newPwd.length > 18) {
    return res.resParamsErr('密码长度6-18位')
  }
  // 全是小写字符
  if ( /^[a-z]{6,18}$/.test(newPwd) ) {
    return res.resParamsErr('密码不能全是小写字母')
  }
  // 全是大写字母
  if ( /^[A-Z]{6,18}$/.test(newPwd) ) {
    return res.resParamsErr('密码不能全是大写字母')
  }
  // 全是数字
  if ( /^[0-9]{6,18}$/.test(newPwd) ) {
    return res.resParamsErr('密码不能全是数字')
  }
  if ( /^[.]{6,18}$/.test(newPwd) ) {
    return res.resParamsErr('密码不能全是.')
  }
  if ( /^_{6,18}$/.test(newPwd) ) {
    return res.resParamsErr('密码不能全是_')
  }
  // 包含特殊字符
  if (/[^0-9a-zA-Z._@-]/.test(newPwd)) {
    return res.resParamsErr('密码不能包含特殊字符')
  }
  
  // 密码通过
  // 短信验证码进行验证。   id -  verify
  const authOk = sendOneSmsRouter.authVerifyCode({id, verify})
  if ( !authOk ) {
    // 超时
    return res.resBadErr('验证码过期，请重试')   
  }

  
  // 验证码OK
  // 有值， 保存数据库
  const query = {_id: uid}
  const upObj = {$set: { upwd:newPwd }}

  const [err, resObj] = await utils.capture( userLoginTable.updateOne(query, upObj) )
  if (err) {
    return res.resBadErr('修改失败'+err.message)
  }

  if(resObj.modifiedCount===0) {
    return res.resBadErr('不要重复修改')
  }
  
  res.resOk('修改成功')
  sendOneSmsRouter.smsOk({id})
  return
  //---------- END
} catch(e) {
  res.resParamsErr('代码出错'+e.message)
}})
// 发送验证码


// 五、注销账号
r.delete('/user', async(req, res) => { try{
  let _id = ObjectId(req.user.uid)
  
  // 谨慎操作。 暂时关闭
  return res.resOk('危险操作暂时关闭')

  const [err,resObj] = await utils.capture( userLoginTable.deleteOne({_id}) )
  const [err2, resObj2] = await utils.capture( userInfoTable.deleteOne({uid:_id}) )
  if (err || err2) {
    return res.resBadErr('数据库遇到错误'+err.message+err2.message)
  }
  if (resObj.deletedCount === 0 || resObj2.deletedCount === 0) {
    return res.resBadErr('删除失败，稍后重试, 当前账号可能不存在')
  }

  // delete ok
  return res.resOk('删除OK')

  // END-----------------
} catch(e) {
  res.resParamsErr('代码出错'+e.message)
}})

module.exports = r