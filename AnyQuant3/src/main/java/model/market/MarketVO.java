package model.market;

import model.stock.StockAttribute;

/**
 * Created by kylin on 16/6/1.
 * All rights reserved.
 */
public class MarketVO {

    private String marketName;

    private String kLineJson;

    private String marketInfo;

    private StockAttribute lastestDay;

    public MarketVO(String marketName, String kLineJson, String marketInfo, StockAttribute lastestDay) {
        this.marketName = marketName;
        this.kLineJson = kLineJson;
        this.marketInfo = marketInfo;
        this.lastestDay = lastestDay;
    }

    public String getMarketName() {
        return marketName;
    }

    public String getkLineJson() {
        return kLineJson;
    }

    public StockAttribute getLastestDay() {
        return lastestDay;
    }

    public String getMarketInfo() {
        return marketInfo;
    }

}
