package po;

import dao.entity.IndustryAttribute;

/**
 * Created by kylin on 16/6/1.
 * All rights reserved.
 */
public class IndustryPO {

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

    //下面是该行业领涨股信息

    /**
     * 股票名称
     */
    private String stockName;

    /**
     * 最新价格
     */
    private double latestPrice;

    /**
     * 涨跌幅
     */
    private double change;

    public IndustryPO(IndustryAttribute dao) {
        this.industryName = dao.getIndustryName();
        this.time = dao.getTime();
        if (dao.getNumberOfstocks()!=null)
            this.numberOfstocks = Integer.parseInt(dao.getNumberOfstocks());
        if (dao.getAveragePrice()!=null)
            this.averagePrice = Double.parseDouble(dao.getAveragePrice());
        if (dao.getAverageChange()!=null)
            this.averageChange = Double.parseDouble(dao.getAverageChange());
        if (dao.getAverageProfit()!=null)
            this.averageProfit = Double.parseDouble(dao.getAverageProfit());
        if (dao.getTotalVolume()!=null)
            this.totalVolume = Double.parseDouble(dao.getTotalVolume());
        if (dao.getTotalAmount()!=null)
            this.totalAmount = Double.parseDouble(dao.getTotalAmount());
        if (dao.getStockName()!=null)
            this.stockName = dao.getStockName();
        if (dao.getLatestPrice()!=null)
            this.latestPrice = Double.parseDouble(dao.getLatestPrice());
        if (dao.getPriceChange()!=null)
            this.change = Double.parseDouble(dao.getPriceChange());
    }

    public String getIndustryName() {
        return industryName;
    }

    public String getTime() {
        return time;
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

    public String getStockName() {
        return stockName;
    }

    public double getLatestPrice() {
        return latestPrice;
    }

    public double getChange() {
        return change;
    }
}
