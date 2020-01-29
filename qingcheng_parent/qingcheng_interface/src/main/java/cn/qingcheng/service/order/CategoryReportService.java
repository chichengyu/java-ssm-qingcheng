package cn.qingcheng.service.order;


import cn.qingcheng.pojo.order.CategoryReport;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

public interface CategoryReportService {

    /**
     * 昨天的数据统计（类目统计）
     * @param date
     * @return
     */
    List<CategoryReport> categoryReport(LocalDate date);

    /**
     * 定时插入统计数据
     */
    void createData();

    /**
     * 统计指定日期
     * @param date1
     * @param date2
     * @return
     */
    List<Map> categoryCount(String date1,String date2);
}
