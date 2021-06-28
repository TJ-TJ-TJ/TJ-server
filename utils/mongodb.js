let options = {
  host: '',
  port: 0,
  database: 'tj'
}

let MongoClient = require('mongodb').MongoClient;
let url = `mongodb://${options.host}:${options.port}/`;

const client = new MongoClient(url,  { useUnifiedTopology: true })
// 开始连接
client.connect((err => {
  if (err) {
    console.log('---------------------------------- mongodb连接失败', err)
    process.exit()
  } else {
    console.log('---------------------------------- mongodb连接OK')
  }
}))

// collection 集合. 
function collection(tableName) {
  // 集合名. 操作
  const db = client.db(options.database)
  return db.collection(tableName)
}

module.exports = {
  collection //集合,表
}
