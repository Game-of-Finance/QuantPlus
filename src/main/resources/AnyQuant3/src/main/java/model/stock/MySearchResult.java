package model.stock;

/**
 * Created by kylin on 16/6/4.
 * All rights reserved.
 */
public class MySearchResult {

    private String stockNumber;

    private String stockName;

    public MySearchResult(String stockNumber, String stockName) {
        this.stockNumber = stockNumber;
        this.stockName = stockName;
    }

    public String getStockNumber() {
        return stockNumber;
    }

    public String getStockName() {
        return stockName;
    }
}
