package cn.qingcheng.exception.order;


import cn.qingcheng.pojo.order.CategoryReport;
import cn.qingcheng.service.order.CategoryReportService;
import com.alibaba.dubbo.config.annotation.Reference;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/categoryReport")
public class CategoryReportController {

    @Reference
    private CategoryReportService categoryReportService;

    /**
     * 昨天的数据统计（类目统计）
     * @return
     */
    @GetMapping("/yesterday")
    public List<CategoryReport> yesterday(){
        LocalDate localDate = LocalDate.now().minusDays(1);// 昨天的日期
        return categoryReportService.categoryReport(localDate);
    }

    /**
     * 统计指定日期
     * @param date1
     * @param date2
     * @return
     */
    @GetMapping("/categoryCount")
    public List<Map> categoryCount(String date1, String date2){
        return categoryReportService.categoryCount(date1,date2);
    }
}
