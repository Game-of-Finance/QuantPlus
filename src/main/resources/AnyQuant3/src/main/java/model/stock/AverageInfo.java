package model.stock;

/**
 * Created by kylin on 16/6/4.
 * All rights reserved.
 */
public class AverageInfo {

    /**
     * 平均价格
     */
    private double averagePrice;

    /**
     * 平均涨跌幅
     */
    private double averageChange;

    /**
     * 平均每股收益
     */
    private double averageProfit;

    /**
     * 总成交量
     */
    private double totalVolume;

    /**
     * 总成交额
     */
    private double totalAmount;

    public AverageInfo(double averagePrice, double averageChange, double averageProfit, double totalVolume, double totalAmount) {
        this.averagePrice = averagePrice;
        this.averageChange = averageChange;
        this.averageProfit = averageProfit;
        this.totalVolume = totalVolume;
        this.totalAmount = totalAmount;
    }

    public double getAveragePrice() {
        return averagePrice;
    }

    public double getAverageChange() {
        return averageChange;
    }

    public double getAverageProfit() {
        return averageProfit;
    }

    public double getTotalVolume() {
        return totalVolume;
    }

    public double getTotalAmount() {
        return totalAmount;
    }
}
