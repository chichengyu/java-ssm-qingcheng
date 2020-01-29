package cn.qingcheng.service.system;


import java.util.List;
import java.util.Map;

public interface MenuService {

    /**
     * 菜单过滤查询
     * @return
     */
    List<Map<String,Object>> findAllMenu();
}
