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
@Table(name = "industry_attribute", catalog = "anyquant")
public class IndustryAttribute implements Serializable {
    /**
     * 行业名称
     */
    private String industryName;

    /**
     * IndustryPeriodEnum根据区分
     */
    private String time;

    //以上两个属性为主键


    /**
     * 行业内公司的数目
     */
    private String numberOfstocks;

    /**
     * 平均价格
     */
    private String averagePrice;

    /**
     * 平均涨跌幅
     */
    private String averageChange;

    /**
     * 平均每股收益
     */
    private String averageProfit;

    /**
     * 总成交量
     */
    private String totalVolume;

    /**
     * 总成交额
     */
    private String totalAmount;

    //下面是该行业领涨股信息

    /**
     * 股票名称
     */
    private String stockName;

    /**
     * 最新价格
     */
    private String latestPrice;

    /**
     * 涨跌幅
     */
    private String priceChange;


    @Id
    @Column(name="name")
    public String getIndustryName() {
        return industryName;
    }

    @Id
    @Column(name="time")
    public String getTime() {
        return time;
    }

    @Column(name="number_of_stocks")
    public String getNumberOfstocks() {
        return numberOfstocks;
    }

    @Column(name="average_price")
    public String getAveragePrice() {
        return averagePrice;
    }

    @Column(name="average_change")
    public String getAverageChange() {
        return averageChange;
    }

    @Column(name="average_profit")
    public String getAverageProfit() {
        return averageProfit;
    }

    @Column(name="total_volume")
    public String getTotalVolume() {
        return totalVolume;
    }

    @Column(name="total_amount")
    public String getTotalAmount() {
        return totalAmount;
    }

    @Column(name="stock_name")
    public String getStockName() {
        return stockName;
    }

    @Column(name="latest_price")
    public String getLatestPrice() {
        return latestPrice;
    }

    @Column(name="price_change")
    public String getPriceChange() {
        return priceChange;
    }

    public void setIndustryName(String industryName) {
        this.industryName = industryName;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public void setNumberOfstocks(String numberOfstocks) {
        this.numberOfstocks = numberOfstocks;
    }

    public void setAveragePrice(String averagePrice) {
        this.averagePrice = averagePrice;
    }

    public void setAverageChange(String averageChange) {
        this.averageChange = averageChange;
    }

    public void setAverageProfit(String averageProfit) {
        this.averageProfit = averageProfit;
    }

    public void setTotalVolume(String totalVolume) {
        this.totalVolume = totalVolume;
    }

    public void setTotalAmount(String totalAmount) {
        this.totalAmount = totalAmount;
    }

    public void setStockName(String stockName) {
        this.stockName = stockName;
    }

    public void setLatestPrice(String latestPrice) {
        this.latestPrice = latestPrice;
    }

    public void setPriceChange(String change) {
        this.priceChange = change;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        IndustryAttribute that = (IndustryAttribute) o;

        if (industryName != null ? !industryName.equals(that.industryName) : that.industryName != null) return false;
        if (time != null ? !time.equals(that.time) : that.time != null) return false;
        if (numberOfstocks != null ? !numberOfstocks.equals(that.numberOfstocks) : that.numberOfstocks != null)
            return false;
        if (averagePrice != null ? !averagePrice.equals(that.averagePrice) : that.averagePrice != null) return false;
        if (averageChange != null ? !averageChange.equals(that.averageChange) : that.averageChange != null)
            return false;
        if (averageProfit != null ? !averageProfit.equals(that.averageProfit) : that.averageProfit != null)
            return false;
        if (totalVolume != null ? !totalVolume.equals(that.totalVolume) : that.totalVolume != null) return false;
        if (totalAmount != null ? !totalAmount.equals(that.totalAmount) : that.totalAmount != null) return false;
        if (stockName != null ? !stockName.equals(that.stockName) : that.stockName != null) return false;
        if (latestPrice != null ? !latestPrice.equals(that.latestPrice) : that.latestPrice != null) return false;
        return priceChange != null ? priceChange.equals(that.priceChange) : that.priceChange == null;

    }

    @Override
    public int hashCode() {
        int result = industryName != null ? industryName.hashCode() : 0;
        result = 31 * result + (time != null ? time.hashCode() : 0);
        result = 31 * result + (numberOfstocks != null ? numberOfstocks.hashCode() : 0);
        result = 31 * result + (averagePrice != null ? averagePrice.hashCode() : 0);
        result = 31 * result + (averageChange != null ? averageChange.hashCode() : 0);
        result = 31 * result + (averageProfit != null ? averageProfit.hashCode() : 0);
        result = 31 * result + (totalVolume != null ? totalVolume.hashCode() : 0);
        result = 31 * result + (totalAmount != null ? totalAmount.hashCode() : 0);
        result = 31 * result + (stockName != null ? stockName.hashCode() : 0);
        result = 31 * result + (latestPrice != null ? latestPrice.hashCode() : 0);
        result = 31 * result + (priceChange != null ? priceChange.hashCode() : 0);
        return result;
    }
}
