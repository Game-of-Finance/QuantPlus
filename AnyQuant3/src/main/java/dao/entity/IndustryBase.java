package dao.entity;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by JiachenWang on 2016/5/10.
 */

@Entity
@Table(name = "industry_list", catalog = "anyquant")
public class IndustryBase implements Serializable {
    /**
     * 编号
     */
    private String id;
    /**
     * 行业名称
     */
    private String name;
    /**
     * 行业描述
     */
    private String describe;

    @Id
    @Column(name="id")
    public String getId() {
        return id;
    }

    @Column(name="name")
    public String getName() {
        return name;
    }

    @Column(name="industry_describe")
    public String getDescribe() {
        return describe;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }
}
