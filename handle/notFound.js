module.exports = (req, res, next) => {
  res.status(404).send({msg: '非法的请求路径404', ok: 0})
}