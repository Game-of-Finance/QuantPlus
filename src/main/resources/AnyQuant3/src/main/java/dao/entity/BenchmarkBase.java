package dao.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by JiachenWang on 2016/5/13.
 */

@Entity
@Table(name = "benchmark_list", catalog = "anyquant")
public class BenchmarkBase implements Serializable {
    /**
     * 大盘编号
     */
    private String id;
    /**
     * 大盘名称
     */
    private String name;

    @Id
    @Column(name="ID")
    public String getId() {
        return id;
    }

    @Column(name="name")
    public String getName() {
        return name;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

}
