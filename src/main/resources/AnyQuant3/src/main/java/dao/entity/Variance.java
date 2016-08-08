package dao.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by JiachenWang on 2016/6/5.
 */
@Entity
@Table(name = "variance", catalog = "anyquant")
public class Variance implements Serializable {
    /**
     * 时间e.g.2016-05
     */
    private String time;
    /**
     * 股票编号
     */
    private String id;
    /**
     * 方差值
     */
    private String value;

    public Variance() {
    }

    public Variance(String time, String ID, String value) {
        this.time = time;
        this.id = ID;
        this.value = value;
    }

    @Id
    @Column(name = "time")
    public String getTime() {
        return time;
    }

    @Column(name = "value")
    public String getValue() {
        return value;
    }

    @Id
    @Column(name = "ID")
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public void setValue(String value) {
        this.value = value;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Variance variance = (Variance) o;

        if (time != null ? !time.equals(variance.time) : variance.time != null) return false;
        if (id != null ? !id.equals(variance.id) : variance.id != null) return false;
        return value != null ? value.equals(variance.value) : variance.value == null;

    }

    @Override
    public int hashCode() {
        int result = time != null ? time.hashCode() : 0;
        result = 31 * result + (id != null ? id.hashCode() : 0);
        result = 31 * result + (value != null ? value.hashCode() : 0);
        return result;
    }
}
