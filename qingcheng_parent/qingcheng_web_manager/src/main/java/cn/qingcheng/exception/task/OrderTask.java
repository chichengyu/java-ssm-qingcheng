package cn.qingcheng.exception.task;

import cn.qingcheng.service.order.CategoryReportService;
import com.alibaba.dubbo.config.annotation.Reference;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class OrderTask {

    /**
     * 秒 分 时 日 月 星期(如果没要求，用问号 ?)
     * 10 *\/5 * * * ? 每分钟的10秒时执行，间隔5分钟执行
     */
    @Scheduled(cron = "10 */5 * * * ?")
    public void orderTimeOutLoginc(){
        System.out.println("执行方法");
    }

    @Reference
    private CategoryReportService categoryReportService;

    /** 定时插入统计数据
     * 每天 凌晨 1 点执行
     */
    @Scheduled(cron = "0 0 1 * * ?")
    public void createCategoryReportDate(){
        System.out.println("生成类目统计数据");
        categoryReportService.createData();
    }
}
