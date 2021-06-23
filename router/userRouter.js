const utils             = require('../utils/utils')
const express           = require('express')
const tencentcloud      = require("tencentcloud-sdk-nodejs")
const AipFaceClient     = require("baidu-aip-sdk").face
const nodemailer        = require('nodemailer')
const multer            = require('multer')
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

// 短信验证配置
const smsClient = tencentcloud.sms.v20210111.Client
const smsClientOptions = {
  credential: {
    secretId: 'AKID53rSpxqU0KRL2Un7MUTEzav2yqTr0uZ6',
    secretKey: 'fCXeWWJrAF6h7f3EHCuPuFPPAfwxiFXe',
  },
  region: "ap-guangzhou",
  profile: {
    signMethod: "HmacSHA256",
    httpProfile: {
      reqMethod: "POST",
      reqTimeout: 30,
      endpoint: "sms.tencentcloudapi.com"
    },
  },
}
const smsParams = {
  SmsSdkAppId: "1400511877",
  SignName: "北京异凡文化传播有限公司",
  ExtendCode: "",
  SenderId: "",
  SessionContext: "",
  PhoneNumberSet: ["+8617538590302"],
  TemplateId: "978076",
  TemplateParamSet: ["3633"],
}
const phoneArray = []  // 这样的关系 保存 {id, verify}


// 文件接收配置
const multerOptions = {
  storage: multer.memoryStorage(),
  limits: {
    fileSize: 10*1024*1024 //10mb
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
    res.resParamsErr('图片过大')
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
    // 检查手机号|邮箱是否注册 
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


/**
 * 账号密码登录 -uid
*/
r.post('/login', async(req, res, next) => {
try {
  let uname = req.body.uname
  let upwd = req.body.upwd
  let isRemember = req.body.isremember || true  // 是否记住登录状态

  let upwdTest = /(?!^\d+$)(?!^[a-z]+$)(?!^[A-Z]+$)^\w{6,20}$/.test(upwd)
  let uphoneTest = /^1\d{10}$/.test(uname)
  let umailTest = /^\w+@\w+[.][a-z]+$/.test(uname)
  if (!upwdTest) {
    return res.resParamsErr('密码格式错误')
  }

  // 手机号通过 -> 手机号登录 - 密码登录
  if (uphoneTest) {
    let where = { uphone:String(uname), upwd }
    let [err, resObj] = await utils.capture( userTable.findOne(where) )
    if (err) {
      return res.resDataErr('数据库有误')
    }
    if (!resObj) {
      return res.resParamsErr('账号和密码不匹配')
    }
    // 验证通过
    if (isRemember === false) { // 不记住登录状态
      req.session.cookie.maxAge = ''
    }

    {
      let uid = resObj._id.toString()
      let uname = resObj.uname
      let isLogin = true
      let loginType = 'phone'
      const tokenData = {
        uid,
        isLogin,
        loginType
      }
      const token = generateToken(tokenData)
      res.resOk({result: { token, uid, uname, loginType}})
      return
    }
  }

  // 邮箱号 
  if (umailTest) {    
    let where = { umail:uname, upwd }
    let [err, resObj] = await utils.capture( userTable.findOne(where) )

    if (err) {
      return res.resDataErr()
    }
    if (!resObj) {
      return res.resParamsErr('账号与密码不匹配')
    }

    // 验证通过
    {
      let uid = resObj._id.toString()
      let uname = resObj.uname
      let isLogin = true
      let loginType = 'mail'
      const tokenData = {
        uid,
        isLogin,
        loginType
      }
      const token = generateToken(tokenData)
      res.resOk({result: { token, uid, uname,loginType}})
      return
    }
  }

  // 手机号 - 邮箱号 均有误
  res.resParamsErr()
} catch(err) {
  res.resParamsErr('代码有吴')
}
})


// 手机号 - 验证码登录 - 发送短信
r.get('/login1_send', async(req, res) => {
try {
  let phone = req.query.phone
  let exist = await isExist(phone)
  
  if (exist) {
    // 存在了 发验证码
    let verify = Math.random().toString().substr(2, 5)
    let client = new smsClient(smsClientOptions)
    smsParams.TemplateId = "1000137"
    smsParams.PhoneNumberSet = [`+86${phone}`]
    smsParams.TemplateParamSet = [verify, 2]
    client.SendSms(smsParams, function(err, response) {
      // 请求异常返回，打印异常信息
      if (err) {
        res.resDataErr('服务器遇到错误, 请重试')
        return
      }

      if (response.SendStatusSet[0].Code.toLocaleUpperCase() !== 'OK'.toLocaleUpperCase()) {
        //短信未发送到 目标手机上
        return res.resParamsErr('短信发送失败, 请稍后重试.')
      }
      

      // 请求正常返回，打印response对象
      let resId = response.RequestId
      phoneArray.push({id:resId, verify})

      res.resOk({ id:resId, phone })
      setTimeout(_ => {
        // 闭包对象: {resId:}
        const i = phoneArray.findIndex(v => v.id === resId)
        if (i >= 0) {
          phoneArray.splice(i, 1)
        }
        client = null
        verify = null
      }, 2*60*1000)
    })
    return
  } else {
    // 不存在. 提示注册
    res.resBadErr({code:403, msg:'请先注册'})
    return
  }
} catch(err) {
  res.resParamsErr('代码有误')
}
})

// 手机号 - 验证码登录
r.post('/login1', async(req, res) => {
try {
  let phone = req.body.phone.trim()
  let verify = req.body.verify.trim()
  let id = req.body.id.trim()
  if (!verify || !id ||!phone) { return res.resParamsErr() }

  // 前端已经判断了. 注册过的账号才可以进来
  const i = phoneArray.findIndex(v => v.id === id && v.verify==verify)
  if (i === -1) {
    return res.resParamsErr('时间超时或验证码有误')
    // 验证码有误
  }

  // 可以登录了
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

  let [err, resObj] = await utils.capture( userTable.findOne(where, ops) )
  if (err || !resObj._id) {
    return res.resParamsErr()
  }

  

  //开始响应
  {
    let uid = resObj._id.toString()
    let uname = resObj.uname
    let isLogin = true
    let loginType = 'phone'
    const tokenData = {
      uid,
      isLogin,
      loginType
    }
    const token = generateToken(tokenData)


    const userInfoWhere = {
      uid: resObj._id
    }
    const userInfoOption = {
      projection: {
        _id: 0,
        avatar: 1
      }
    }

    // 查找 -> 
    let [err2, resObj2] = await utils.capture( userInfoTable.findOne(userInfoOption, userInfoOption) )
    

    res.resOk({result: { token, uname, uid ,loginType, avatar:resObj2.avatar  }})
    return
  }
} catch(err) {
  res.resParamsErr('代码错误')
}
})


// 人脸登录
r.post('/loginFace', upload.single('face'), async(req, res) => {
  if (!req.file) {
    return res.resParamsErr()
  }

  let base64 = req.file.buffer.toString('base64')
  let groupId = "test"
  let imageType = "BASE64"

  let options = { liveness_control: 'NORMAL' }
  let [err, faceRes] = await utils.capture( faceClient.search(base64, imageType, groupId, options) )
  if (err) {
    return res.resParamsErr()
  }
  /**
   * 存在人脸
   * 分支语句
  */
  if (faceRes.result) {
    let userObj = faceRes.result.user_list[0]

    if (userObj.score >= 80) {

      let where = { uface_id: userObj.user_id }
      // 可以响应.   uid:数据库用户ID.   userIid:人脸组ID
      let [err, resObj] = await utils.capture( userTable.findOne(where) )


      if (err) {
        res.resDataErr('遇到错误')
        return 
      }
      if (!resObj) {
        console.log(err, resObj)
        return res.resBadErr('未注册')
      }

      // OK
      let uid = resObj._id.toString()
      let userId = resObj.uface_id
      let isLogin = true
      let loginType = 'face'
      let uname = resObj.uname
      const tokenData = {
        uid,
        isLogin,
        loginType,
        userId
      }
      const token = generateToken(tokenData)
      
      const userInfoWhere = {
        uid: resObj._id
      }
      const userInfoOption = {
        projection: {
          _id: 0,
          avatar: 1
        }
      }
  
      // 查找 -> 
      let [err2, resObj2] = await utils.capture( userInfoTable.findOne(userInfoOption, userInfoOption) )
      res.resOk({result: { token, uid, uname,isLogin,loginType, avatar: resObj2.avatar}})
    } else {
      // 用户没有注册
      return res.resBadErr('未注册')
    }
  } else {
    // 不存在人脸
    res.resBadErr('未注册')
  }
}, faceError)


// 获取验证码
// 响应请求唯一ID
r.get('/verify', async(req, res, next) => {
  let phone = req.query.phone
  let mail = req.query.mail
  if (!/^1\d{10}$/.test(phone)) {
    return res.resParamsErr('手机号格式错误')
  }

  let exist = await isExist(phone)
  if (exist) {
    // 存在
    res.resBadErr({code:403, msg:'已经存在'})
    return
  } else {
    // 可注册
    let client = new smsClient({
      credential: {
        secretId: 'AKID53rSpxqU0KRL2Un7MUTEzav2yqTr0uZ6',
        secretKey: 'fCXeWWJrAF6h7f3EHCuPuFPPAfwxiFXe',
      },
      region: "ap-guangzhou",
      profile: {
        signMethod: "HmacSHA256",
        httpProfile: {
          reqMethod: "POST",
          reqTimeout: 30,
          endpoint: "sms.tencentcloudapi.com"
        },
      },
    })
    let verify = Math.random().toString().substr(2, 5)
    smsParams.PhoneNumberSet = [`+86${phone}`]
    smsParams.TemplateId = "978076"
    smsParams.TemplateParamSet = [verify, 2]  //
    
    client.SendSms(smsParams, function(err, response) {
      if (err) {
        res.resDataErr('服务器遇到错误, 请重试')
        return
      }
  
      // 请求正常返回，打印response对象
      let resId = response.RequestId
  
      phoneArray.push({id:resId, verify})
      res.resOk({ id:resId, phone  })
      
      setTimeout(_ => {
        // 闭包对象: {resId:}
        const i = phoneArray.findIndex(v => v.id === resId)
        if (i >= 0) {
          phoneArray.splice(i, 1)
        }
        client = null
        verify = null
      }, 2*60*1000)
    })

    return
  }

  if ( /^\w+@\w+[.][a-z]+$/.test(mail) ) {
    let verify = Math.random().toString().substr(2, 5)
    console.log(verify)
    
    transporter.sendMail(
    {
      from: 'gaowujie2019@163.com', // 发送人邮箱   必须要和 对应邮箱一直的授权码
      to: mail, // 接收人邮箱，多个使用数组或用逗号隔开
      subject: '云订餐注册', // 主题
      html: `您的验证码是: <b>${verify}<b>, 20分钟内有效.`, // 邮件正文 可以为 HTML 或者 text 
    },
    (err, info) => {
      console.log('发送了........')
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
    return
  }

  return res.resParamsErr()
})

// 手机号注册
r.post('/sigin', async(req, res) => {
try {

  // 手机号注册.   只需要 随机生成一个 用户名即可.  数据库只需要放入 uphone uname
  let uphone = req.body.uphone || ''
  let id = req.body.id || ''
  let newVerify = req.body.newVerify || ''

  // 参数拦截
  let uphoneTest = /^1\d{10}$/.test(uphone)
  if ( !uphoneTest ) {
    return res.resParamsErr()
  }

  // 查找匹配的 验证码
  let resIndex = phoneArray.findIndex(v => v.id==id && v.verify==newVerify)
  if (resIndex === -1) {
    return res.resParamsErr('验证码错误或超时')
  }

  // 验证码正确. 且未超时. 可以开启注册
  let uname = Math.random().toString(26).substr(2, 7)
  let insertData = { uname, uphone }
  let [err, resObj] = await utils.capture( userTable.insertOne(insertData) )

  
  
  // 非法的操作.
  if (err || resObj.insertedCount!==1) {
    return res.resDataErr('注册失败, 请重试')
  }
  
  // 注册成功
  {
    let uid = resObj.insertedId.toString()
    let isLogin = true
    let loginType = 'phone'
    let avatar = 'https://z3.ax1x.com/2021/06/22/RZOHpR.png'
    const tokenData = {
      uid,
      isLogin,
      loginType
    }
    const token = generateToken(tokenData)
    res.resOk({result: { token, uid, uname, loginType, avatar}})

    // 写入 user_info
    {
      const insertInfo = {
        uid: ObjectId(uid),
        avatar,
        uname,
        sex: 1
      }
      const [err, resObj] = await utils.capture( userInfoTable.insertOne(insertInfo) )
      if (err || resObj.insertedCount === 0) {
        // res.resBadErr('注册失败')  该死的代码  响应个锤子.
        return
      }
    }
  }
} catch(e) {
  res.resParamsErr('代码出错')
}
})

// 邮箱注册
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

// 人脸注册
r.post('/sigin3',upload.single('face'), async(req, res) => {
  if (!req.file) {
    res.resParamsErr()
    return
  }

  let base64 = req.file.buffer.toString('base64')
  let groupId = "test"
  let imageType = "BASE64"
  let options = { liveness_control: 'NORMAL' }
  let [err, promiseRes] = await utils.capture( faceClient.search(base64, imageType, groupId, options) )
  /**
   * 存在人脸
   * 分支语句
  */
  if (promiseRes.result !== null) {
    if (promiseRes.result.user_list[0].score >= 80) {
      res.resBadErr({code:403, msg:'已经注册过, 可以登录'})
      return
    }
  }

  /**
   * 不存在 . 注册
  */
  let userId = Date.now()
  options = { liveness_control: 'NORMAL' }                                            //userId 放
  [err, promiseRes] = await utils.capture( faceClient.addUser(base64, imageType, groupId, userId, options) )
  // 未知错误 - 网络错误
  if (err) {
    res.resDataErr('网络错误')
    return
  }

  // 人脸图已存入服务器. 开始注册账号, 生成UID
  {
    let uname = Math.random().toString(26).substr(2, 8)
    let insertData = { uname, uface_id }
    let [err, resObj] = await utils.capture( userTable.insertOne(insertData) )

    // 非法的操作.
    if (err || resObj.insertedCount!==1) {
      return res.resDataErr('注册失败, 请重试')
    }

    // 可以响应.   uid:数据库用户ID.   userIid:人脸组ID
    let uid = resObj.insertedId.toString()
    let avatar = 'https://z3.ax1x.com/2021/06/22/RZOHpR.png'
    let isLogin = true
    let loginType = 'face'
    const tokenData = {
      uid,
      userId, // userId 用户组ID
      isLogin, 
      loginType
    }
    const token = generateToken(tokenData)
    // 写入 user_info
    {
      // 写入 user_info
      const insertInfo = {
        uid: ObjectId(uid),
        avatar,
        uname,
        sex: 1
      }
      const [err, resObj] = await utils.capture( userInfoTable.insertOne(insertInfo) )
      if (err || resObj.insertedCount === 0) {
        res.resBadErr('注册失败')
        return
      }

      // OK
      return res.resOk({result: { token, uid, uname,loginType, avatar}})    // uname 是随机码. 已经存在. 
    }
  }
}, faceError)


// 添加人脸
r.post('/addface', upload.single('face'), async(req, res) => {
  if (!req.file) {
    res.resParamsErr()
    return
  }

  // 测试环境下
  const base64 = req.file.buffer.toString('base64')
  const { userId } = req.user // 用户id.  不是数据库uid
  const groupId = 'test'
  const imageType = "BASE64"
  const options = { liveness_control: 'NORMAL' }                                            //userId 放
  let [err, promiseRes] = await utils.capture( faceClient.addUser(base64, imageType, groupId, userId, options) )
  // 未知错误 - 网络错误
  if (err) {
    res.send(err)
    return
  }

  // 添加成功
  res.resOk('添加成功')
}, faceError)


// 退出登录
r.get('/quit', (req, res) => {
  res.resOk('退出成功')
})

// 手机号是否可注册 / 邮箱是否可注册
r.get('/exist', async (req, res, next) => {
  let exist =  await isExist(req.query.uphone)
  if (exist) {
    // 存在.不可注册
    res.resBadErr()
  } else {
    res.resOk()
  }
})

// 图形验证 - 拦截恶意注册
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