// 个人资料修改
const path              = require('path')
const express           = require('express')
const nodemailer        = require('nodemailer')
const multer            = require('multer')
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
// 文件接收配置

const storage =  multer.diskStorage({
  destination: path.join(__dirname, '../public/img'),
  filename(req, file, cb) {
    
    cb(null, file.fieldname + '-' + Date.now() + path.extname(file.originalname) )
  }
})
const multerOptions = {
  storage: storage,
  limits: {
    fileSize: 5*1024*1024 //5mb
  }
}
const upload = multer(multerOptions)
const avatarError    =   (err, req, res, next) => {
  if (err.code === 'LIMIT_FILE_SIZE') {
    res.resBadErr('图片过大请控制在5MB以内')
  }
}

// 修改接口 - 头像

r.put('/avatar', upload.single('avatar'),async(req,res) => { try {
  
  let query = {uid: ObjectId(req.user.uid)}
  let avatarPath = 'https://tj.testw.top/public/img/' + req.file.filename
  let update = {
    $set:{ avatar: avatarPath }
  }

  const [err,resObj] = await utils.capture( userInfoTable.updateOne(query, update) )
  if (err) {
    return res.resBadErr(err.message)
  }
  if (resObj.modifiedCount === 0) {
    return res.resBadErr('没有被修改')
  }

  //OK 
  res.resOk({result:{ avatar: avatarPath}})

} catch(e) {
  res.resParamsErr('代码出错'+e.message)
}}, avatarError)

// 修改接口 - 非头像
r.put('/info', async(req,res,next) => { try {

  let { nickname,uname,sex,age,city } = req.body
  sex = Number(sex)
  age = Number(age)

  let query = {uid: ObjectId(req.user.uid)}
  let update = { $set:{
    sex,
    age,
    city,
    nickname,
    xingming: uname,
  }}
  const [err, resObj] = await utils.capture( userInfoTable.updateOne(query, update) )
  if (err) {
    return res.resBadErr(err.message)
  }
  if (resObj.modifiedCount === 0) {
    return res.resBadErr('个人信息没有被修改')
  }

  //OK 
  res.resOk()

} catch(e) {
  res.resParamsErr('代码错误'+e.message)
}})

// 获取接口
r.get('/info', async(req,res) => { try {

  const uid = ObjectId(req.user.uid)
  const query = { uid }
  const need = { projection:{
    _id: 0,
    nickname: 1,
    xingming: 1,
    sex: 1,
    age: 1,
    city: 1,
    avatar: 1
  }}
  const [err, resObj] = await utils.capture( userInfoTable.findOne(query, need) )

  if (err) {
    return res.resBadErr('数据库错误'+err.message)
  }
  if (!resObj) {
    return res.resBadErr('未找到此账号相关信息')
  }
  resObj.uname = resObj.xingming   //uname放真实姓名
  delete resObj.xingming
  return res.resOk({result: resObj})
  //END----------------
} catch(e) {
  return res.resBadErr('代码出错'+e.message)
}})

module.exports = r