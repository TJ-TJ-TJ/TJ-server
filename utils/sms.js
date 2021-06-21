const tencentcloud      = require("tencentcloud-sdk-nodejs")


class SMS {
  constructor(smsParams, smsOptions) {
    /**
     * 创建SMS客户端配置，密钥，APIID等
    */
    this.smsClientOptions = {
      credential: {
        secretId: 'AKID53rSpxqU0KRL2Un7MUTEzav2yqTr0uZ6',
        secretKey: 'fCXeWWJrAF6h7f3EHCuPuFPPAfwxiFXe',
      },
      /* 必填：地域信息，可以直接填写字符串ap-guangzhou，或者引用预设的常量 */
      region: "ap-guangzhou",
      /* 非必填:
       * 客户端配置对象，可以指定超时时间等配置 */
      profile: {
        /* SDK默认用TC3-HMAC-SHA256进行签名，非必要请不要修改这个字段 */
        signMethod: "HmacSHA256",
        httpProfile: {
          /* SDK默认使用POST方法。
           * 如果你一定要使用GET方法，可以在这里设置。GET方法无法处理一些较大的请求 */
          reqMethod: "POST",
          /* SDK有默认的超时时间，非必要请不要进行调整
           * 如有需要请在代码中查阅以获取最新的默认值 */
          reqTimeout: 30,
          /**
           * SDK会自动指定域名。通常是不需要特地指定域名的，但是如果你访问的是金融区的服务
           * 则必须手动指定域名，例如sms的上海金融区域名： sms.ap-shanghai-fsi.tencentcloudapi.com
           */
          endpoint: "sms.tencentcloudapi.com"
        },
      },
    }

    /**
     * 发送短信时,需要的数据  
     * phone、 发送数据、 等
     */
    this.smsParams = {
      /* 短信应用ID: 短信SmsSdkAppId在 [短信控制台] 添加应用后生成的实际SmsSdkAppId，示例如1400006666 */
      SmsSdkAppId: "1400511877", //示例数据, 后期根据接口的不同  进行修改
    
      /* 短信签名内容: 使用 UTF-8 编码，必须填写已审核通过的签名，签名信息可登录 [短信控制台] 查看 */
      SignName: "北京异凡文化传播有限公司",
    
      /* 短信码号扩展号: 默认未开通，如需开通请联系 [sms helper] */
      ExtendCode: "",
    
      /* 国际/港澳台短信 senderid: 国内短信填空，默认未开通，如需开通请联系 [sms helper] */
      SenderId: "",
    
      /* 用户的 session 内容: 可以携带用户侧 ID 等上下文信息，server 会原样返回 */
      SessionContext: "",
    
      /* 下发手机号码，采用 e.164 标准，+[国家或地区码][手机号]
        * 示例如：+8613711112222， 其中前面有一个+号 ，86为国家码，13711112222为手机号，最多不要超过200个手机号*/
      PhoneNumberSet: ["+86175xxxxxxxxx"],
    
      /* 模板 ID: 必须填写已审核通过的模板 ID。模板ID可登录 [短信控制台] 查看 */
      TemplateId: "978076",
    
      /* 模板参数: 若无模板参数，则设置为空*/
      TemplateParamSet: ["3633"],
    }

    // 修改默认对象属性
    Object.assign(this.smsParams, smsParams)
    Object.assign(this.smsClientOptions, smsOptions)

    // 创建客户端
    this.smsClient = new tencentcloud.sms.v20210111.Client(this.smsClientOptions)
  }

  /**
   * return @{Promise}  value: [err, resObj]
  */
  sendOneSms(smsParams) {
    
    return new Promise(resolve => {
      this.smsClient.SendSms(this.smsParams, (err, response) => {
        
        if (err) {
          return resolve([err, null])
        }

        // 无错误 - 但是短信不一定发送成功
        const isOk = response.SendStatusSet[0].Code.toLocaleUpperCase() === 'OK'.toLocaleUpperCase()
        const resultObj = {
          id: response.RequestId,
          status: response.SendStatusSet[0]
        }
        if (isOk) {
          // 成功发送
          resultObj.ok = 1
        }
        else {
          // 发送失败。
          resultObj.ok = 0
        }
        return resolve([null, resultObj])
      })
    })
    
  }
}



module.exports = SMS