const utils             = require('../utils/utils')
const sharp             = require('sharp');
const express           = require('express')
const tencentcloud      = require("tencentcloud-sdk-nodejs")
const AipFaceClient     = require("baidu-aip-sdk").face
const nodemailer        = require('nodemailer')
const multer            = require('multer')
const { sendOneSms }    = require('../utils/sms') // sendOneSmsRouter 依赖
const { ObjectId }      = require('bson')
const { collection }    = require('../utils/mongodb')


const userTable         = collection('user_login')
const userInfoTable     = collection('user_info')
const { generateToken, verifyToken } = require('../utils/jwt')
const r = express.Router()





// 邮箱验证配置
const transporter = nodemailer.createTransport({
  host: 'smtp.163.com', // 这是腾讯的邮箱 host
  port: 465, // smtp 端口
  secureConnection: true,
  auth: {
    user: 'gaowujie2019', // 发送邮件的邮箱名
    pass: 'PMRYKCAMVGYXCPJS', // 邮箱的授权码，也可以使用邮箱登陆密码
  },
})
const mailArray = []  //{id:时间戳, verify}


// 文件接收配置
const multerOptions = {
  storage: multer.memoryStorage(),
  limits: {
    fileSize:20*1024*1024 //10mb
  }
}
const upload = multer(multerOptions)


// 人脸识别配置
const APP_ID       =   "23904543"
const API_KEY      =   "KWQea80zG6SFAptinLWiX5gO"
const SECRET_KEY   =   "LPsvQb2e2Ok6H71ZsTqRoY2gv9U8QAvQ"
const faceClient = new AipFaceClient(APP_ID, API_KEY, SECRET_KEY);
const faceError    =   (err, req, res, next) => {
  if (err.code === 'LIMIT_FILE_SIZE') {
    res.resBadErr('图片过大')
  }
}


// 验证码配置 - 拦截恶意注册
// 验证码
const CaptchaClient = tencentcloud.captcha.v20190722.Client;
const CaptchaConfig = {
  credential: {
    secretId: "AKID53rSpxqU0KRL2Un7MUTEzav2yqTr0uZ6",
    secretKey: "fCXeWWJrAF6h7f3EHCuPuFPPAfwxiFXe",
  },
  region: "",
  profile: {
    httpProfile: {
      endpoint: "captcha.tencentcloudapi.com",
    },
  },
};


//  方法-----------------------------
    // 检查手机号|邮箱是否注册 
    // 是否被注册过？ | 是否存在？  true被注册过， false未被注册过
async function isExist(number) {
  let uphone = number || ''
  let umail = number || ''

  let checkPhone = /^1\d{10}$/.test(uphone)
  let checkMail = /^\w+@\w+[.][a-z]+$/.test(umail)
  
  
  if (checkPhone) {
    let where = { uphone }
    let [err, resObj] = await utils.capture( userTable.findOne(where) )
    if (err) {  // 
      return true 
    }
      // 数据库获取
    if (resObj) {
      // 已注册
      return true
    } else {
      return false // 不存在,需要注册
    }
  }

  if (checkMail) {
    let where = { umail }
    let [err, resObj] = await utils.capture( userTable.findOne(where) )
    if (err) {
      return true //存在
    }
      // 数据库获取
    if (resObj) {
      // 已注册
      return true
    } else {
      return false // 不存在,可注册
    }
  }
}

    // 封装 数据库操作 - 写入 user_login
async function writeUserLogin(insertData) { try {
  let [err, resObj] = await utils.capture( userTable.insertOne(insertData) )
  if (err) {
    return {state:false, msg:err.message} //写入失败
  }

  if (resObj.insertedCount===0) {
    return {state:false, msg:'没有报错,但是写入user_login 失败'} //写入失败
  }

  // Ok
  return {state:true, msg:'ok', result: resObj} // 写入成功

  //END-------
} catch(e) {
  return { state:false, msg: e.message }
}}
  // 写入 user_info 表
async function writeUserInfo(insertData) { try {
  const insertInfo = {
    uid: ObjectId(insertData.uid),
    avatar: insertData.avatar,
    uname: insertData.uname,
    sex: 1
  }
  const [err, resObj] = await utils.capture( userInfoTable.insertOne(insertInfo) )
  if (err) {
    return { state:false, msg:err.message}
  } 
  if (resObj.insertedCount === 0) {
    return { state:false, msg:'没有报错,但是user_info集合没有写入' }
  }

  return {state:true, result: resObj}
  // END -------------------------------
} catch(e) {
  return {state:false, msg:e.message}
}}


// 中间件 - 验证码验证码完毕后, 写入数据  处理要响应的数据 -的中间件
/**
 * req.loginType   登录类型
 * req.userInfoData 用户信息表
 * req.userLoginData   用户登录表需要插入的数据
 * 
 * 响应token, 和必要的数据
*/
async function siginResultRouter(req, res, next) { try {
 
  // 验证码正确. 且未超时. 可以开启注册
  let uname = Math.random().toString(26).substr(2, 8)

  // 写入 user_login
  let defaultLoginData = { uname }
  Object.assign(defaultLoginData, req.userLoginData)
  let writeUserLoginRes = await writeUserLogin(defaultLoginData)
  if ( !writeUserLoginRes.state ) {
    // 写入失败
    return res.resBadErr( writeUserLoginRes.msg )
  }

  // 写入 user_info
  let   uidStr    = writeUserLoginRes.result.insertedId.toString()  //String
  let   isLogin   = true
  let   loginType = req.loginType || 'phone'
  const avatar    = 'https://z3.ax1x.com/2021/06/22/RZOHpR.png'
  
  const tokenData = {
    uid: uidStr,
    isLogin,
    loginType
  }
  const token = generateToken(tokenData)
  

  // 写入 user_info
  let defaultInfoData = {
    uid: ObjectId(uidStr), 
    uname, 
    avatar
  }
  Object.assign(defaultInfoData, req.userInfoData)
  let writeInfoRes =  await writeUserInfo(defaultInfoData)
  
  if ( !writeInfoRes.state ) {
    // 写入失败
    return res.resBadErr(writeInfoRes.msg)
  }

  // OK
  // 写入成功
  res.resOk({result: { token, loginType, uid:uidStr, uname,  avatar}})
  if (loginType === 'phone') {
    sendOneSmsRouter.smsOk({id})
  }

  // END -----
} catch(e) {
  res.resParamsErr('代码有误'+e.message)
}}



/**
 * @params{ Object },  
 *        
          TemplateId: "1006671",         // 修改密码模板
* query 方式传参.   uphone 字段。 短信模板.   res： { result:id }
*/
function sendOneSmsRouter(smsParams) {

  // 当前 手机号(ID代替) 和  短信验证码验证，是否匹配
  sendOneSmsRouter.authVerifyCode = function({id, verify}) {
    return module.successArray.find(obj => obj.id===id && String(obj.verify)===String(verify))
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
      TemplateId: "1006671",         // 修改密码模板
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

/**
 * req.uid
 * req.loginType
*/
// 响应登录后的数据   token 等
async function loginResultRouter(req,res){try {
  let uid = req.uid //ObjectId类型
  let loginType = req.loginType || 'phone'   //需要改动

  const tokenData = {
    uid: uid.toString(),
    isLogin: true,
    loginType
  }
  const token = generateToken(tokenData)
  const userInfoWhere = {
    uid
  }

  // uname 修改了 nickname
  const userInfoOption = {
    projection: {
      _id: 0,
      uname: 1,  //案例说是  nickname
      avatar: 1,
    }
  }

  // 查找
  let [err2, resObj2] = await utils.capture( userInfoTable.findOne(userInfoWhere, userInfoOption) )
  if (err2) {
    return res.resBadErr('数据库有误' + err2.message)
  }
  if (!resObj2) {
    return res.resBadErr('没有此用户')
  }

  res.resOk({result: { token ,loginType,  uid, avatar:resObj2.avatar, uname: resObj2.uname  }})
  return

}catch(e) {
  res.resBadErr(e.message)
}}


// 一、登录 -账号密码
r.post('/login', async(req, res, next) => {
try {
  let uname = req.body.uname
  let upwd = req.body.upwd
  let isRemember = req.body.isremember || true  // 是否记住登录状态


  let uphoneTest = /^1\d{10}$/.test(uname)
  let umailTest = /^\w+@\w+[.][a-z]+$/.test(uname)
  if (upwd.length < 6 || upwd.length > 18) {
    return res.resParamsErr('密码长度6-18位')
  }
  // 全是小写字符
  if ( /^[a-z]{6,18}$/.test(upwd) ) {
    return res.resParamsErr('密码不能全是小写字母')
  }
  // 全是大写字母
  if ( /^[A-Z]{6,18}$/.test(upwd) ) {
    return res.resParamsErr('密码不能全是大写字母')
  }
  // 全是数字
  if ( /^[0-9]{6,18}$/.test(upwd) ) {
    return res.resParamsErr('密码不能全是数字')
  }
  // 全是 .
  if ( /^[.]{6,18}$/.test(upwd) ) {
    return res.resParamsErr('密码不能全是.')
  }
  // 全是 _
  if ( /^_{6,18}$/.test(upwd) ) {
    return res.resParamsErr('密码不能全是_')
  }
  // 包含特殊字符
  if (/[^0-9a-zA-Z._@-]/.test(upwd)) {
    return res.resParamsErr('密码不能包含特殊字符')
  }

  // 手机号通过 -> 手机号登录 - 密码登录
  if (uphoneTest) {
    let where = { uphone:String(uname), upwd:String(upwd) }
    let [err, resObj] = await utils.capture( userTable.findOne(where) )
    if (err) {
      return res.resDataErr('数据库有误'+err.message)
    }
    if (!resObj) {
      return res.resParamsErr('账号和密码不匹配')
    }

    // 验证通过
    req.uid = resObj._id  //ObjectId 类型
    req.loginType = 'uname'
    return next()
  }

  // 邮箱号 
  if (umailTest) {    
    let where = { umail:uname, upwd }
    let [err, resObj] = await utils.capture( userTable.findOne(where) )

    if (err) {
      return res.resDataErr('数据库出错'+err.message)
    }
    if (!resObj) {
      return res.resParamsErr('账号与密码不匹配')
    }
    req.uid = resObj._id  //ObjectId 类型
    req.loginType = 'uname'
    return next()
  }

  //用户名
  {
    let where = { uname:uname, upwd }
    let [err, resObj] = await utils.capture( userTable.findOne(where) )

    if (err) {
      return res.resDataErr('数据库出错'+err.message)
    }
    if (!resObj) {
      return res.resParamsErr('账号与密码不匹配')
    }
    req.uid = resObj._id  //ObjectId 类型
    req.loginType = 'uname'
    return next()
  }

  //END----------------------
} catch(err) {
  res.resParamsErr('代码有误'+err.message)
}}, loginResultRouter)


// 二、登录 -根据手机号发送短信
async function isExistRouter(req,res,next){
  try {
    let phone = req.query.phone
    if (await isExist(phone)) {
      // 手机存在, 可以发送
      return next()
    } else {
      res.resBadErr({code:403, msg:'请先注册'})
    }
  } catch(e) {
    return res.resBadErr({code:202, msg:e.message})
  }
}
r.get('/login1_send', isExistRouter ,sendOneSmsRouter({TemplateId: '1009319'}) )


// 二、登录 -手机号登录
              // 短信登录验证
async function smsLoginRouter(req, res,next) {
try {
  let phone = req.body.phone.trim()
  let verify = req.body.verify.trim()
  let id = req.body.id.trim()
  if (!verify || !id ||!phone) { return res.resParamsErr('参数不符合要求') }

  let verifyCodeState = sendOneSmsRouter.authVerifyCode({id, verify})
  
  // 没有通过验证
  if (!verifyCodeState) {
    return res.resBadErr('时间超时或验证码有误')
  }

  // 查询数据库是否存在 此用户
  const where = {
    uphone: phone
  }
  const ops = {
    projection: {
      _id: 1,
      uname: 1,
      umail: 1,
      uface_id:1,
    }
  }
                                              //user_login
  let [err, resObj] = await utils.capture( userTable.findOne(where, ops) )
  if (err) {
    return res.resBadErr('数据库错误'+err.message)
  }
  
  if (!resObj._id) {
    return res.resBadErr('没有找到符合要求的数据')
  }

  // 验证通过
  req.uid = resObj._id
  sendOneSmsRouter.smsOk({id})
  return next()

} catch(err) {
  res.resParamsErr('代码错误'+err.message)
}}
r.post('/login1', smsLoginRouter, loginResultRouter)


// 三、登录 -人脸登录
              // 人脸登录验证逻辑
async function faceLoginRouter(req,res,next) { try {
  if (!req.file) {
    return res.resParamsErr('face参数缺少')
  }

  let faceBuffer = await sharp(req.file.buffer).resize(1000,1000,{
    fit: 'inside'
  }).toBuffer()
  let base64 = faceBuffer.toString('base64')
  let groupId = "test"
  let imageType = "BASE64"

  let options = { liveness_control: 'NORMAL' }
  // 搜索 - 人脸库
  let [err, faceRes] = await utils.capture( faceClient.search(base64, imageType, groupId, options) )
  if (err) {
    return res.resParamsErr(err)
  }
  if (faceRes.error_code !== 0) {
    return res.resBadErr(faceRes.error_msg)
  }

  // 没有人脸
  if (!faceRes.result) {
    return res.resBadErr('未注册')
  }

  // 继续判断
  let userObj = faceRes.result.user_list[0]
  if (userObj.score < 80) {
    return res.resBadErr('人脸不清晰,请重试')
  }

  // 查数据库
  {
    let where = { uface_id: Number(userObj.user_id) }
    // 可以响应.   uid:数据库用户ID.   userIid:人脸组ID
    let [err2, resObj2] = await utils.capture( userTable.findOne(where) )


    if (err2) {
      return res.resDataErr('遇到错误'+err2)
    }
    if (!resObj2) {
      return res.resBadErr('未注册')
    }
    
    // OK
    req.uid = resObj2._id //ObjectId  类型
    req.loginType = 'face'
    return next()
  }

  // END
} catch(e) {
  console.log(e);
  return res.resParamsErr('代码错误'+e.message)

}}
r.post('/login2', upload.single('face'), faceLoginRouter, loginResultRouter, faceError)






// 一、注册 -手机号
r.post('/sigin', async(req,res,next) => { try {
  // 手机号和(id) 验证码 

  let uphone = req.body.uphone || ''
  let id = req.body.id || ''
  let newVerify = req.body.newVerify || ''

  // 参数拦截
  let uphoneTest = /^1\d{10}$/.test(uphone)
  if ( !uphoneTest ) {
    return res.resParamsErr('手机号格式错误')
  }

  // 当前验证码 和 手机号是否匹配
  if (
    !sendOneSmsRouter.authVerifyCode({id, verify:newVerify}) ) {
    return res.resParamsErr('验证码错误或超时')
  }


  // 验证码正确. 且未超时. 可以开启注册
  let uname = Math.random().toString(26).substr(2, 8)
  let insertData = { uname, uphone }

  // 写入 user_login
  let writeUserLoginRes = await writeUserLogin(insertData)
  if ( !writeUserLoginRes.state ) {
    // 写入失败
    return res.resBadErr( writeUserLoginRes.msg )
  }

  // 写入 user_info
  {
    let uid = writeUserLoginRes.result.insertedId.toString()
    let isLogin = true
    let loginType = 'phone'
    
    const tokenData = {
      uid,
      isLogin,
      loginType
    }
    const token = generateToken(tokenData)
    

    // 写入 user_info
    // 传入uid.  和要写入的字段.  async 没有失败状态
    const avatar = 'https://z3.ax1x.com/2021/06/22/RZOHpR.png'
    let writeInfoRes =  await writeUserInfo({uid, uname, avatar})
    
    if (writeInfoRes.state) {
      // 写入成功
      
      res.resOk({result: { token, uid, uname, loginType, avatar}})
      sendOneSmsRouter.smsOk({id})
      return
    } else {
      // 写入失败
      return res.resBadErr(writeInfoRes.msg)
    }
    
  }


  // END-----
} catch(e) {
  res.resBadErr('代码错误'+e.message)
}})

// 二、注册 -邮箱暂时废弃
r.post('/sigin2', async(req, res) => {
  let umail = req.body.umail || ''
  let uname = req.body.uname || ''
  let upwd = req.body.upwd || ''
  let id = req.body.id || ''
  let newVerify = req.body.newVerify || ''

  let unameTest = /^\w{3,12}$/.test(uname)
  let upwdTest = /(?!^\d+$)(?!^[a-z]+$)(?!^[A-Z]+$)^\w{6,20}$/.test(upwd)
  let umailTest = /^\w+@\w+[.][a-z]+$/.test(umail)

  // 只要有一个 不符合要求  参数拦截
  if (!unameTest || !upwdTest || !umailTest || !id || !newVerify) {
    return res.resParamsErr()
  }

  // 查找匹配的 验证码
  let resIndex = mailArray.findIndex(v => v.id==id && v.verify==newVerify)
  if (resIndex === -1) {
    return res.resParamsErr('验证码错误或超时')
  }
  mailArray.splice(resIndex, 1)

  // 验证码正确. 且未超时. 可以开启注册
  let insertData = { uname, upwd, umail }
  let [err, resObj] = await utils.capture( userTable.insertOne(insertData) )

  // 非法的操作.
  if (err || resObj.insertedCount!==1) {
    return res.resDataErr('注册失败, 请重试')
  }

  // 注册成功
  {
    let uid = resObj.insertedId.toString()
    let isLogin = true
    let loginType = 'mail'
    const tokenData = {
      uid,
      isLogin,
      loginType
    }
    const token = generateToken(tokenData)
    res.resOk({result: { token, uid, uname, loginType}})

    // 写入 user_info
    {
      const insertInfo = {
        uid: ObjectId(uid),
        avatar: "https://zyailing.xyz/img/defaultHead.png",
        uname,
        sex: 1
      }
      const [err, resObj] = await utils.capture( userInfoTable.insertOne(insertInfo) )
      if (err || resObj.insertedCount === 0) {
        // res.resBadErr('注册失败') 响应个锤子
        return
      }

      return 
    }
    return
  }
})

// 三、注册 -人脸注册
// 人脸注册 主要逻辑
async function sigin3Router(req, res, next) { try{
  if (!req.file) {
    res.resParamsErr()
    return
  }
  

  let faceBuffer = await sharp(req.file.buffer).resize(1000,1000, {
    fit: 'inside'
  }).toBuffer()
  let base64 = faceBuffer.toString('base64')
  let groupId = "test"
  let imageType = "BASE64"
  let options = { liveness_control: 'NORMAL' }
  let [err, promiseRes] = await utils.capture( faceClient.search(base64, imageType, groupId, options) )
  
  console.log(err, promiseRes);
  if (err) {
    return res.resBadErr(err)
    
  }
  /**
   * 存在人脸
   * 分支语句
  */
  // 找到了, 已经注册过
  if (promiseRes.error_code === 0) {
    if (promiseRes.result !== null) {
      if (promiseRes.result.user_list[0].score >= 80) {
        res.resBadErr({code:403, msg:'已经注册过, 可以登录'})
        return
      }
    }
  }
  


  /**
   * 不存在 . 注册
  */
  let userId = Date.now()  //用户组ID
  options = { liveness_control: 'NORMAL' }                                            //userId 放
  [err, promiseRes] = await utils.capture( faceClient.addUser(base64, imageType, groupId, userId, options) )
  // 未知错误 - 网络错误
  if (err) {
    return res.resDataErr('网络错误'+err)
  }

  // 人脸图已存入服务器. 开始注册账号, 生成UID
  req.loginType       = 'face'
  req.userLoginData   = { uface_id: userId }
  req.userInfoData    = {}
  return next()

  // END----------------------
} catch(e) {
  res.resParamsErr('代码出错'+e.message)
  console.log(e)
}}
r.post('/sigin3',upload.single('face'), sigin3Router, siginResultRouter ,faceError)




// 退出登录
r.get('/quit', (req, res) => {
  res.resOk('退出成功')
})

// 添加人脸
r.post('/addFace', upload.single('face'), async(req, res) => { try {
  if (!req.file) {
    res.resParamsErr('缺少 face字段')
    return
  }

  // 测试环境下
  let faceBuffer = await sharp(req.file.buffer).resize(1000,1000, {
    fit:'inside'
  }).toBuffer()
  let base64 = faceBuffer.toString('base64')
  const groupId = 'test'
  const imageType = "BASE64"
  const options = { liveness_control: 'NORMAL' }     
  const uid = ObjectId(req.user.uid)
  const need = {
    projection:{
      _id:0,
      uface_id:1
    }
  }
  // find user_login
  let [err2, resObj] = await utils.capture( userTable.findOne({_id:uid}, need) )
  if (err2) {
    return res.resDataErr('数据库错误'+err2.message)
  }

  if (!resObj) {
    return res.resBadErr('此用户有BUG')
  }

  // 非人脸注册形式 添加则 resObj.uface_id 为 undefined|null
  let uface_id = null
    // 有人脸ID
  if (resObj.uface_id) {
    uface_id = resObj.uface_id
  } else {
    // 无人脸ID
    uface_id = Date.now() //Number
    let updateData = {$set: {
      uface_id
    }}
    userTable.updateOne({_id:uid}, updateData)
  }
  uface_id = Number(uface_id)

  // 添加 人脸数据库
  let [err, promiseRes] = await utils.capture( faceClient.addUser(base64, imageType, groupId, uface_id, options) )
  // 未知错误 - 网络错误
  if (err) {
    return res.resBadErr('未知错误' + err.message)
  }
  if (promiseRes.error_code !== 0) {
    return res.resBadErr('添加失败' + promiseRes.error_msg)
  }

  // OK
  // uface_id 插入数据库
  
  return res.resOk()
} catch(e) {
  res.resParamsErr('代码错误' + e.message)
}}, faceError)







// 工具， 发送手机验证码
r.get('/verify', sendOneSmsRouter({TemplateId:'1009319'}) )

// 工具， 发送邮箱验证码-
r.get('/mailVerifyCode', async (req,res) => { try {
  if ( !/^\w+@\w+[.][a-z]+$/.test(mail) ) {
    return res.resParamsErr('邮箱格式错误')
  }

  // 格式正确. 

  let verify = Math.random().toString().substr(2, 5)
  
  transporter.sendMail(
  {
    from: 'gaowujie2019@163.com', // 发送人邮箱   必须要和 对应邮箱一直的授权码
    to: mail, // 接收人邮箱，多个使用数组或用逗号隔开
    subject: '云订餐注册', // 主题
    html: `您的验证码是: <b>${verify}<b>, 20分钟内有效.`, // 邮件正文 可以为 HTML 或者 text 
  },
  (err, info) => {
    if (err) {
      return res.resDataErr(err)
    }
    // console.log(info)
    let resId = info.messageId
    mailArray.push({ id:resId, verify })

    res.resOk({ id:resId, verify, msg:'20分钟内有效' })
    setTimeout(_ => {
      // 形成闭包对象 { resId: xxx }
      let resIndex = mailArray.findIndex(v => v.id === resId)
      if (resId >= 0) {
        mailArray.splice(resIndex, 1)
      }
    }, 20*60*1000)//20分钟
  })

  //END ------
} catch(e) {
  res.resBadErr('代码错误'+e.message)
}})

// 工具， 手机号是否注册 | 支持邮箱号
r.get('/exist', async (req, res, next) => {
  let exist =  await isExist(req.query.uphone)
  if (exist) {
    // 存在. 已注册。
    res.resBadErr()
  } else {
    res.resOk()
  }
})

// 工具， 图形验证 - 拦截恶意注册
r.get('/yzm', async(req, res) => {
try {
  let ticket = req.query.ticket
  let randstr = req.query.randstr
  let ip = req.ip.match(/:((\d{1,3}[.]){3}\d{1,3})/)[1]
  const client = new CaptchaClient(clientConfig);
  const params = {
      "CaptchaType": 9,
      "Ticket": ticket,
      "UserIp": ip,
      "Randstr": randstr,
      "CaptchaAppId": 2010652495,
      "AppSecretKey": "00paUU0Rc8JrnKwFGaaapOw**"
  };


  console.log(ticket, randstr)
  
  let [err, clientRes] = await utils.capture( client.DescribeCaptchaResult(params) )
  
  if (err) {
    res.resDataErr(err)
    return
  }
  res.resOk(clientRes)
} catch(err) {
  console.log(err)
  res.resParamsErr('代码错误')
}})


module.exports = r