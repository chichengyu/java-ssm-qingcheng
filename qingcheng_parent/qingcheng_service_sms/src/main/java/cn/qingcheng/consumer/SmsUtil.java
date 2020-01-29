package cn.qingcheng.consumer;

import com.alibaba.fastjson.JSON;
import com.aliyuncs.CommonRequest;
import com.aliyuncs.CommonResponse;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.exceptions.ServerException;
import com.aliyuncs.http.MethodType;
import com.aliyuncs.profile.DefaultProfile;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.util.Map;

/**
 * 阿里云短信发送类
 */
@Component
public class SmsUtil {

    @Value("${accessKeyId}")
    private String accessKeyId;

    @Value("${accessKeySecret}")
    private String accessKeySecret;

    /**
     * 发送短信
     * @param phone 手机号
     * @param smsCode 模板code SMS_182541596
     * @param param 参数 code验证码 {"code":"value"}
     * @return
     */
    public boolean sendSms(String phone,String smsCode,String param){
        DefaultProfile profile = DefaultProfile.getProfile("cn-hangzhou", accessKeyId, accessKeySecret);
        IAcsClient client = new DefaultAcsClient(profile);

        CommonRequest request = new CommonRequest();
        //request.setProtocol(ProtocolType.HTTPS);
        request.setMethod(MethodType.POST);
        request.setDomain("dysmsapi.aliyuncs.com");
        request.setVersion("2017-05-25");
        request.setAction("SendSms");
        request.putQueryParameter("RegionId", "cn-hangzhou");
        request.putQueryParameter("PhoneNumbers", phone);
        request.putQueryParameter("SignName", "青橙");// 签名名称
        request.putQueryParameter("TemplateCode", smsCode);// 模板code SMS_182541596
        request.putQueryParameter("TemplateParam", param);// {"code":"value"}
        try {

            CommonResponse response = client.getCommonResponse(request);
            String data = response.getData();
            Map map = JSON.parseObject(data, Map.class);
            if (map.get("Code").equals("OK")){
                return true;
            }
            // 记录失败日志
            return false;
            // return response;
        } catch (ServerException e) {
            e.printStackTrace();
            return false;
        } catch (ClientException e) {
            e.printStackTrace();
            return false;
        }
    }
}
