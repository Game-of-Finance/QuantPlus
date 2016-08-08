package dao.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by JiachenWang on 2016/5/19.
 */

@Entity
@Table(name = "trade", catalog = "anyquant")
public class TradeDao implements Serializable {
    /**
     * 一个没用的编号
     */
    private String index;
    /**
     * 股票编号
     */
    private String id;
    /**
     * 日期
     */
    private String date;

    /**
     * 交易时间形式15:00:00
     */
    private String time;

    /**
     * 涨跌幅
     */
    private String price;

    /**
     * 价格变化-0.01 or 0.0
     */
    private String change;

    /**
     * 成交手
     */
    private String volume;

    /**
     * 成交金额(元)
     */
    private String amount;

    /**
     * 买卖类型【买盘、卖盘、中性盘】
     */
    private String type;

    public TradeDao() {
    }

    @Id
    @Column(name="ID")
    public String getId() {
        return id;
    }

    @Id
    @Column(name="date")
    public String getDate() {
        return date;
    }

    @Id
    @Column(name="time")
    public String getTime() {
        return time;
    }

    @Column(name="type")
    public String getType() {
        return type;
    }

    @Column(name="amount")
    public String getAmount() {
        return amount;
    }

    @Column(name="volume")
    public String getVolume() {
        return volume;
    }

    @Column(name="stock_change")
    public String getChange() {
        return change;
    }

    @Column(name="price")
    public String getPrice() {
        return price;
    }

    @Column(name="info_index")
    public String getIndex() {
        return index;
    }

    public void setIndex(String index) {
        this.index = index;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public void setChange(String change) {
        this.change = change;
    }

    public void setVolume(String volume) {
        this.volume = volume;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TradeDao tradeDao = (TradeDao) o;

        if (index != null ? !index.equals(tradeDao.index) : tradeDao.index != null) return false;
        if (id != null ? !id.equals(tradeDao.id) : tradeDao.id != null) return false;
        if (date != null ? !date.equals(tradeDao.date) : tradeDao.date != null) return false;
        if (time != null ? !time.equals(tradeDao.time) : tradeDao.time != null) return false;
        if (price != null ? !price.equals(tradeDao.price) : tradeDao.price != null) return false;
        if (change != null ? !change.equals(tradeDao.change) : tradeDao.change != null) return false;
        if (volume != null ? !volume.equals(tradeDao.volume) : tradeDao.volume != null) return false;
        if (amount != null ? !amount.equals(tradeDao.amount) : tradeDao.amount != null) return false;
        return type != null ? type.equals(tradeDao.type) : tradeDao.type == null;

    }

    @Override
    public int hashCode() {
        int result = index != null ? index.hashCode() : 0;
        result = 31 * result + (id != null ? id.hashCode() : 0);
        result = 31 * result + (date != null ? date.hashCode() : 0);
        result = 31 * result + (time != null ? time.hashCode() : 0);
        result = 31 * result + (price != null ? price.hashCode() : 0);
        result = 31 * result + (change != null ? change.hashCode() : 0);
        result = 31 * result + (volume != null ? volume.hashCode() : 0);
        result = 31 * result + (amount != null ? amount.hashCode() : 0);
        result = 31 * result + (type != null ? type.hashCode() : 0);
        return result;
    }
}
