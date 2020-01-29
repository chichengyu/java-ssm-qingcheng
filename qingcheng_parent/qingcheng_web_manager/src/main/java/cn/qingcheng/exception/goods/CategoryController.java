package cn.qingcheng.exception.goods;


import cn.qingcheng.entity.PageResult;
import cn.qingcheng.entity.Response;
import cn.qingcheng.pojo.goods.Category;
import cn.qingcheng.service.goods.CategoryService;
import com.alibaba.dubbo.config.annotation.Reference;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/category")
public class CategoryController {

    @Reference
    private CategoryService categoryService;

    @RequestMapping("/findAll")
    public List<Category> findAll(){
        return categoryService.findAll();
    }

    /**
     * 分页查询规格
     * @param page
     * @param size
     * @return
     */
    @GetMapping("/findPage")
    public PageResult<Category> findPage(int page,int size){
        return categoryService.findPage(page,size);
    }

    /**
     * 搜索条件查询规格
     * @param searchMap
     * @return
     */
    @PostMapping("/findList")
    public List<Category> findList(@RequestBody Map<String,Object> searchMap){
        return categoryService.findList(searchMap);
    }


    /**
     * 搜索分页查询
     * @param searchMap
     * @param page
     * @param size
     * @return
     */
    @PostMapping("/findPage")
    public PageResult<Category> findPage(@RequestBody Map<String,Object> searchMap, int page, int size){
        return categoryService.findPage(searchMap,page,size);
    }

    /**
     * id查询
     * @param id
     * @return
     */
    @GetMapping("/findById")
    public Category findById(Integer id){
        return categoryService.findById(id);
    }

    /**
     * 添加规格
     * @param category
     * @return
     */
    @PostMapping("/add")
    public Response add(@RequestBody Category category){
        categoryService.add(category);
        return Response.success();
    }

    /**
     * 更新规格
     * @param category
     * @return
     */
    @PostMapping("/update")
    public Response update(@RequestBody Category category){
        categoryService.update(category);
        return Response.success();
    }

    /**
     * 删除规格
     * @param id
     * @return
     */
    @GetMapping("/delete")
    public Response update(Integer id){
        categoryService.delete(id);
        return Response.success();
    }
}
