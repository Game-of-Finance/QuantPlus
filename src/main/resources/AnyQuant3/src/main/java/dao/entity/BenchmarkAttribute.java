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
@Table(name = "benchmark_attribute", catalog = "anyquant")
public class BenchmarkAttribute implements Serializable {
    /**
     * 股票编号
     */
    private String id;
    /**
     * 日期
     */
    private String date;
    /**
     * 开盘价
     */
    private String open;
    /**
     * 最高价
     */
    private String high;
    /**
     * 最低价
     */
    private String low;
    /**
     * 收盘价
     */
    private String close;
    /**
     * 交易量
     */
    private String volume;
    /**
     * 价格变动
     */
    private String price_change;

    public BenchmarkAttribute() {
    }

    public BenchmarkAttribute(String id, String date) {
        this.id = id;
        this.date = date;
    }

    @Id
    @Column(name = "ID")
    public String getId() {
        return id;
    }

    @Id
    @Column(name = "date")
    public String getDate() {
        return date;
    }

    @Column(name = "high")
    public String getHigh() {
        return high;
    }

    @Column(name = "open")
    public String getOpen() {
        return open;
    }

    @Column(name = "low")
    public String getLow() {
        return low;
    }

    @Column(name = "close")
    public String getClose() {
        return close;
    }

    @Column(name = "volume")
    public String getVolume() {
        return volume;
    }

    @Column(name = "price_change")
    public String getPrice_change() {
        return price_change;
    }

    public void setPrice_change(String price_change) {
        this.price_change = price_change;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public void setOpen(String open) {
        this.open = open;
    }

    public void setHigh(String high) {
        this.high = high;
    }

    public void setLow(String low) {
        this.low = low;
    }

    public void setClose(String close) {
        this.close = close;
    }

    public void setVolume(String volume) {
        this.volume = volume;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        BenchmarkAttribute that = (BenchmarkAttribute) o;

        if (id != null ? !id.equals(that.id) : that.id != null) return false;
        if (date != null ? !date.equals(that.date) : that.date != null) return false;
        if (open != null ? !open.equals(that.open) : that.open != null) return false;
        if (high != null ? !high.equals(that.high) : that.high != null) return false;
        if (low != null ? !low.equals(that.low) : that.low != null) return false;
        if (close != null ? !close.equals(that.close) : that.close != null) return false;
        if (volume != null ? !volume.equals(that.volume) : that.volume != null) return false;
        return price_change != null ? price_change.equals(that.price_change) : that.price_change == null;

    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (date != null ? date.hashCode() : 0);
        result = 31 * result + (open != null ? open.hashCode() : 0);
        result = 31 * result + (high != null ? high.hashCode() : 0);
        result = 31 * result + (low != null ? low.hashCode() : 0);
        result = 31 * result + (close != null ? close.hashCode() : 0);
        result = 31 * result + (volume != null ? volume.hashCode() : 0);
        result = 31 * result + (price_change != null ? price_change.hashCode() : 0);
        return result;
    }
}
