package model.industry;

import util.math.NumberFormater;

/**
 * 领头股信息:最新价格,涨跌幅,等基本数据
 */
public class TypicalStockInfo {

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

    public TypicalStockInfo(String stockName,double latestPrice,double change){
        this.stockName = stockName;
        this.latestPrice = NumberFormater.cutDouble(latestPrice,2);
        this.change = NumberFormater.cutDouble(change,2);
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
