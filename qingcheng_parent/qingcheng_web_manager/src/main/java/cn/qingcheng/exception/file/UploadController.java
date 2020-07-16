package cn.qingcheng.exception.file;

import cn.qingcheng.entity.Response;
import com.aliyun.oss.OSS;
import com.aliyun.oss.OSSClientBuilder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@RestController
@RequestMapping("/upload")
public class UploadController {
    // 访问的域名
    private final String host = "oss-cn-shenzhen.aliyuncs.com";
    // 存储空间
    private final String bucketName = "xiaochi-img";

    /*============================== 阿里云上传 =============================*/
    /**
     * 阿里云存儲上传
     * @param file
     * @param folder 类型 如：商品、品牌
     * @return
     */
    @PostMapping("/oss")
    public Response ossUpload(@RequestParam("file") MultipartFile file,String folder){
        // 创建OSSClient实例。
        OSS ossClient = createOssClient();
        // 上传文件流。
        // 保存路径，注意：这里不要以 / 或 \ 开头
        String Path = "qingcheng/"+ folder + "/" + new SimpleDateFormat("yyyy/MM").format(new Date()).toString();
        String originalFilename = file.getOriginalFilename();
        String fileName = Path + "/" + UUID.randomUUID().toString().replace("-","") + originalFilename.substring(originalFilename.lastIndexOf("."));
        try {
            ossClient.putObject(bucketName, fileName, file.getInputStream());
        } catch (IOException e) {
            // e.printStackTrace();
            return Response.error("上传失败:"+e.getMessage());
        }
        // 关闭OSSClient。
        ossClient.shutdown();
        Map map = new HashMap();
        map.put("url","https://" + bucketName + "." + host + "/" +fileName);
        return Response.success("上传成功",map);
    }

    /**
     * 删除阿里云图片（单个文件）
     * @param filePath 路径从根目录开始 ："qingcheng/brand/2019/12/c7f2d8fbda5a45d8a6a48e74df0797c7.png
     * @return
     */
    @GetMapping("/delete")
    public Response delete(String filePath){
        // 创建OSSClient实例。
        OSS ossClient = createOssClient();
        // 保存路径，注意：这里不要以 / 或 \ 开头
        // 路径从根目录开始 ："qingcheng/brand/2019/12/c7f2d8fbda5a45d8a6a48e74df0797c7.png
        // 删除文件。如需删除文件夹，请将ObjectName设置为对应的文件夹名称。如果文件夹非空，则需要将文件夹下的所有object删除后才能删除该文件夹。
        ossClient.deleteObject(bucketName, filePath);
        // 关闭OSSClient。
        ossClient.shutdown();
        return Response.success("删除成功");
    }

    /**
     * 获取 ossClient
     * @return
     */
    private OSS createOssClient(){
        // Endpoint以杭州为例，其它Region请按实际情况填写。
        String endpoint = "http://" + host;
        // 云账号AccessKey有所有API访问权限，建议遵循阿里云安全最佳实践，创建并使用RAM子账号进行API访问或日常运维，请登录 https://ram.console.aliyun.com 创建。
        String accessKeyId = "LTAI4Fh7azVyfYdzkkLZwSVUxx";
        String accessKeySecret = "m6iAuji31RjAUgKgDSWRxuCRUFTHIYxx";
        // 创建OSSClient实例。
        OSS ossClient = new OSSClientBuilder().build(endpoint, accessKeyId, accessKeySecret);
        return ossClient;
    }

    /*============================== 本地上传 =============================*/
    /**
     * 上传本地图片
     * @param multipartFile
     * @param request
     * @return
     */
    @PostMapping("/native")
    public Response nativeUpload(@RequestParam("file") MultipartFile multipartFile, HttpServletRequest request){
        //String path = request.getSession().getServletContext().getRealPath("/img");
        String path = "D:\\web\\xampp\\htdocs\\images";
        String originalFilename = multipartFile.getOriginalFilename();
        String subPath = "/upload/" + new SimpleDateFormat("yyyy/MM").format(new Date()).toString();
        String fileName = path + "/" + subPath + "/" + UUID.randomUUID().toString().replace("-","") + originalFilename.substring(originalFilename.lastIndexOf("."));
        File file = new File(fileName);
        if (!file.getParentFile().exists()){
            file.setWritable(true);
            file.mkdirs();
        }
        try {
            multipartFile.transferTo(file);
        } catch (IOException e) {
            // e.printStackTrace();
            return Response.error("上传失败:"+e.getMessage());
        }
        Map map = new HashMap();
        map.put("url","http://images.com:8080" + subPath + "/" + file.getName());
        return Response.success("上传成功",map);
    }
}
