package dao.entity;

import org.hibernate.annotations.BatchSize;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by JiachenWang on 2016/5/12.
 */

@Entity
@BatchSize(size = 50)
@Table(name = "stock_attribute", catalog = "anyquant")
public class StockAttribute implements Serializable {
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
     * 后复权价
     */
    private String adj_price;
    /**
     * 成交量
     */
    private String volume;
    /**
     * 换手率
     */
    private String turnover;
    /**
     * 市盈率
     */
    private String pe_ttm;
    /**
     * 市净率
     */
    private String pb;

    public StockAttribute() {
    }

    public StockAttribute(String id, String date) {
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

    @Column(name = "adj_price")
    public String getAdj_price() {
        return adj_price;
    }

    @Column(name = "volume")
    public String getVolume() {
        return volume;
    }

    @Column(name = "turnover")
    public String getTurnover() {
        return turnover;
    }

    @Column(name = "pe_ttm")
    public String getPe_ttm() {
        return pe_ttm;
    }

    @Column(name = "pb")
    public String getPb() {
        return pb;
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

    public void setAdj_price(String adj_price) {
        this.adj_price = adj_price;
    }

    public void setVolume(String volume) {
        this.volume = volume;
    }

    public void setTurnover(String turnover) {
        this.turnover = turnover;
    }

    public void setPb(String pb) {
        this.pb = pb;
    }

    public void setPe_ttm(String pe_ttm) {
        this.pe_ttm = pe_ttm;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        StockAttribute that = (StockAttribute) o;

        if (id != null ? !id.equals(that.id) : that.id != null) return false;
        if (date != null ? !date.equals(that.date) : that.date != null) return false;
        if (open != null ? !open.equals(that.open) : that.open != null) return false;
        if (high != null ? !high.equals(that.high) : that.high != null) return false;
        if (low != null ? !low.equals(that.low) : that.low != null) return false;
        if (close != null ? !close.equals(that.close) : that.close != null) return false;
        if (adj_price != null ? !adj_price.equals(that.adj_price) : that.adj_price != null) return false;
        if (volume != null ? !volume.equals(that.volume) : that.volume != null) return false;
        if (turnover != null ? !turnover.equals(that.turnover) : that.turnover != null) return false;
        if (pe_ttm != null ? !pe_ttm.equals(that.pe_ttm) : that.pe_ttm != null) return false;
        return pb != null ? pb.equals(that.pb) : that.pb == null;

    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (date != null ? date.hashCode() : 0);
        result = 31 * result + (open != null ? open.hashCode() : 0);
        result = 31 * result + (high != null ? high.hashCode() : 0);
        result = 31 * result + (low != null ? low.hashCode() : 0);
        result = 31 * result + (close != null ? close.hashCode() : 0);
        result = 31 * result + (adj_price != null ? adj_price.hashCode() : 0);
        result = 31 * result + (volume != null ? volume.hashCode() : 0);
        result = 31 * result + (turnover != null ? turnover.hashCode() : 0);
        result = 31 * result + (pe_ttm != null ? pe_ttm.hashCode() : 0);
        result = 31 * result + (pb != null ? pb.hashCode() : 0);
        return result;
    }
}
