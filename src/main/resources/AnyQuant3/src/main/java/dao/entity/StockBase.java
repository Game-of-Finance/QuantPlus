package dao.entity;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by JiachenWang on 2016/5/12.
 */

@Entity
@Table(name = "stock_list", catalog = "anyquant")
public class StockBase implements Serializable {

    /**
     * 序列号
     */
    private String index;
    /**
     * 股票编号
     */
    private String id;
    /**
     * 股票名称
     */
    private String name;
    /**
     * 所属行业名称
     */
    private String industry;

    @Id
    @Column(name="index_num")
    public String getIndex() {
        return index;
    }

    @Column(name="code")
    public String getId() {
        return id;
    }

    @Column(name="c_name",updatable=false)
    public String getIndustry() {
        return industry;
    }

    @Column(name="name",updatable=false)
    public String getName() {
        return name;
    }

    public void setIndex(String index) {
        this.index = index;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setIndustry(String industry) {
        this.industry = industry;
    }

}
