package cn.qingcheng.pojo.goods;


import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Table(name = "tb_template")
public class Template implements Serializable {

    @Id
    private Integer id;

    private String name; // 模板名称

    private Integer specNum;// 规格数量

    private Integer paraNum;// 参数数量

    public Template() {
    }

    public Template(Integer id, String name, Integer specNum, Integer paraNum) {
        this.id = id;
        this.name = name;
        this.specNum = specNum;
        this.paraNum = paraNum;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getSpecNum() {
        return specNum;
    }

    public void setSpecNum(Integer specNum) {
        this.specNum = specNum;
    }

    public Integer getParaNum() {
        return paraNum;
    }

    public void setParaNum(Integer paraNum) {
        this.paraNum = paraNum;
    }

    @Override
    public String toString() {
        return "Template{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", specNum=" + specNum +
                ", paraNum=" + paraNum +
                '}';
    }
}
