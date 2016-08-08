package model.industry;

import model.stock.StockVO;

import java.util.List;

/**
 * Created by JiachenWang on 2016/3/16.
 */
public class Industry {
    //行业名称
    private String name;

    //股票集合
    private List<StockVO> stocks;

    public Industry(String name, List<StockVO> stocks) {
        this.name = name;
        this.stocks = stocks;
    }

    public String getName() {
        return name;
    }

    public List<StockVO> getStocks() {
        return stocks;
    }
}
