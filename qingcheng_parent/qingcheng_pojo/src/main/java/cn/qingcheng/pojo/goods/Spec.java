package cn.qingcheng.pojo.goods;

import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Table(name = "tb_spec")
public class Spec implements Serializable {

    @Id
    private Integer id;

    private String name;//名称

    private String options;//规格选项

    private Integer seq;//排序

    private Integer templateId;//模板ID

    public Spec() {
    }

    public Spec(Integer id, String name, String options, Integer seq, Integer templateId) {
        this.id = id;
        this.name = name;
        this.options = options;
        this.seq = seq;
        this.templateId = templateId;
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

    public String getOptions() {
        return options;
    }

    public void setOptions(String options) {
        this.options = options;
    }

    public Integer getSeq() {
        return seq;
    }

    public void setSeq(Integer seq) {
        this.seq = seq;
    }

    public Integer getTemplateId() {
        return templateId;
    }

    public void setTemplateId(Integer templateId) {
        this.templateId = templateId;
    }

    @Override
    public String toString() {
        return "Spec{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", options='" + options + '\'' +
                ", seq=" + seq +
                ", templateId=" + templateId +
                '}';
    }
}
