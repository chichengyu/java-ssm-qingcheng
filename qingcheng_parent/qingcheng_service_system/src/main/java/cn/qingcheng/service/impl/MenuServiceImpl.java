package cn.qingcheng.service.impl;

import cn.qingcheng.dao.MenuMapper;
import cn.qingcheng.pojo.system.Menu;
import cn.qingcheng.service.system.MenuService;
import com.alibaba.dubbo.config.annotation.Service;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;


@Service
public class MenuServiceImpl implements MenuService {

    @Autowired
    private MenuMapper menuMapper;

    /**
     * 菜单过滤查询
     * @return
     */
    @Override
    public List<Map<String, Object>> findAllMenu() {
        List<Menu> menus = menuMapper.selectAll();
        return findMenuListByParentId(menus,String.valueOf(0));
    }

    /**
     * 递归筛选菜单
     * @param menuList 查询出来的菜单列表
     * @param parentId 父级id
     * @return
     */
    private List<Map<String,Object>> findMenuListByParentId(List<Menu> menuList,String parentId){
        List<Map<String,Object>> mapList = new ArrayList<>();
        // 方式一： fori 循环，删除元素后下标会变化
        for (int i = 0; i < menuList.size(); i++) {
            Menu menu = menuList.get(i);
            if (menu.getParentId().equals(parentId)){
                Map<String, Object> map = new HashMap<>();
                map.put("path",menu.getId());
                map.put("title",menu.getName());
                map.put("icon",menu.getIcon());
                map.put("linkUrl",menu.getUrl());
                map.put("children",findMenuListByParentId(menuList,menu.getId()));

                mapList.add(map);
                menuList.remove(i);
                i--;
            }
        }
        /* 方式二： foreach 循环，删除元素后下标会变化
        for (Menu menu : menuList){
            if (menu.getParentId().equals(parentId)){
                Map<String, Object> map = new HashMap<>();
                map.put("path",menu.getId());
                map.put("title",menu.getName());
                map.put("icon",menu.getIcon());
                map.put("linkUrl",menu.getUrl());
                map.put("children",findMenuListByParentId(menuList,menu.getId()));

                mapList.add(map);
            }
        }*/
        return mapList;
    }

}
