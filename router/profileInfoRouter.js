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


r.put('/info', upload.single('avatar'), async(req,res,next) => { try {
  let { nickname,sex,age,birthday,city } = req.body
  sex = Number(sex)
  age = Date.now() - new Date(birthday)
  age = parseInt( age/1000/60/60/24/365 )
  let avatarPath = path.join('https://tj.testw.top/public/img', req.file.filename)

  let query = {uid: ObjectId(req.user.uid)}
  let update = { $set:{
    avatar: avatarPath,
    sex,
    age,
    city,
    nickname
  }}
  const [err, resObj] = await utils.capture( userInfoTable.updateOne(query, update) )
  if (err) {
    return res.resBadErr(err.message)
  }
  if (resObj.modifiedCount === 0) {
    return res.resBadErr('没有被修改')
  }

  //OK 
  res.resOk()

} catch(e) {
  res.resParamsErr('代码错误'+e.message)
}}, avatarError)

module.exports = r