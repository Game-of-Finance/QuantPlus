package model.industry;

import util.math.NumberFormater;

/**
 * Created by kylin on 16/3/31.
 */
public class IndustryBasicInfo {

    /**
     * 行业内公司的数目
     */
    private int numberOfstocks;

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

    public IndustryBasicInfo(int numberOfstocks,double averagePrice,double averageChange,double averageProfit,double totalVolume,double totalAmount){
        this.numberOfstocks = numberOfstocks;
        this.averagePrice = NumberFormater.cutDouble(averagePrice,2);
        this.averageChange = NumberFormater.cutDouble(averageChange,2);
        this.averageProfit = NumberFormater.cutDouble(averageProfit,2);
        // 成交量的单位是 万手
        this.totalVolume = NumberFormater.cutDouble(totalVolume,0);
        // 成交金额的单位是 亿元
        this.totalAmount = NumberFormater.cutDouble(totalAmount,0);
    }

    public int getNumberOfstocks() {
        return numberOfstocks;
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
