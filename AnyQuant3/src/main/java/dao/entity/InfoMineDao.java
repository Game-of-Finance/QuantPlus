package dao.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by JiachenWang on 2016/6/1.
 */
@Entity
@Table(name = "infomine", catalog = "anyquant")
public class InfoMineDao implements Serializable {
    /**
     * 一个没用的序号
     */
    private String index;
    /**
     * 股票编号
     */
    private String stock_num;
    /**
     * 地雷标题
     */
    private String title;
    /**
     * 信息类型
     */
    private String type;
    /**
     * 地雷日期
     */
    private String date;
    /**
     * 地雷url
     */
    private String url;

    @Id
    @Column(name = "info_index")
    public String getIndex() {
        return index;
    }

    public void setIndex(String index) {
        this.index = index;
    }

    @Id
    @Column(name = "number")
    public String getStock_num() {
        return stock_num;
    }

    public void setStock_num(String stock_num) {
        this.stock_num = stock_num;
    }

    @Column(name = "title")
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Column(name = "type")
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Column(name = "date")
    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Column(name = "url")
    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        InfoMineDao that = (InfoMineDao) o;

        if (index != null ? !index.equals(that.index) : that.index != null) return false;
        if (stock_num != null ? !stock_num.equals(that.stock_num) : that.stock_num != null) return false;
        if (title != null ? !title.equals(that.title) : that.title != null) return false;
        if (type != null ? !type.equals(that.type) : that.type != null) return false;
        if (date != null ? !date.equals(that.date) : that.date != null) return false;
        return url != null ? url.equals(that.url) : that.url == null;

    }

    @Override
    public int hashCode() {
        int result = index != null ? index.hashCode() : 0;
        result = 31 * result + (stock_num != null ? stock_num.hashCode() : 0);
        result = 31 * result + (title != null ? title.hashCode() : 0);
        result = 31 * result + (type != null ? type.hashCode() : 0);
        result = 31 * result + (date != null ? date.hashCode() : 0);
        result = 31 * result + (url != null ? url.hashCode() : 0);
        return result;
    }
}
