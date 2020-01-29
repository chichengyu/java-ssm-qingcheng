package cn.qingcheng.service.impl;

import cn.qingcheng.dao.CategoryReportMapper;
import cn.qingcheng.pojo.order.CategoryReport;
import cn.qingcheng.service.order.CategoryReportService;
import com.alibaba.dubbo.config.annotation.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

@Service(interfaceClass = CategoryReportService.class)
public class CategoryReportServiceImpl implements CategoryReportService {

    @Autowired
    private CategoryReportMapper categoryReportMapper;

    /**
     * 昨天的数据统计（类目统计）
     * @param date
     * @return
     */
    @Override
    public List<CategoryReport> categoryReport(LocalDate date) {
        return categoryReportMapper.categoryReport(date);
    }

    /**
     * 定时插入统计数据
     */
    @Override
    @Transactional
    public void createData() {
        // 查询昨天的类目统计数据
        LocalDate localDate = LocalDate.now().minusDays(1);// 昨天的时间
        List<CategoryReport> categoryReports = categoryReportMapper.categoryReport(localDate);
        // 保存到 tb_category_report
        for (CategoryReport categoryReport : categoryReports){
            categoryReportMapper.insertSelective(categoryReport);
        }
    }

    /**
     * 统计指定日期
     * @param date1
     * @param date2
     * @return
     */
    @Override
    public List<Map> categoryCount(String date1, String date2) {
        return categoryReportMapper.categoryCount(date1,date2);
    }
}
