package bl.impl;

import model.market.MarketVO;
import model.stock.OneDayInfo;
import org.junit.Test;

import java.util.List;

/**
 * Created by kylin on 16/6/1.
 * All rights reserved.
 */
public class MarketImplTest {

    MarketImpl market = new MarketImpl();

    @Test
    public void getStockInMarket() throws Exception {
         List<OneDayInfo> dayInfos = market.getStockInMarket("sh600600");
        for (OneDayInfo oneDayInfo:dayInfos){
            System.out.println(oneDayInfo.getName());
            System.out.println(oneDayInfo.getDate());
        }
    }

    @Test
    public void getMarket() throws Exception {
        MarketVO marketVO = market.getMarket("sh");
        System.out.println(marketVO.getMarketName());
        System.out.println(marketVO.getkLineJson());
    }


    @Test
    public void marketNumber() throws Exception {
        System.out.println(market.marketNumber("sh600000"));
        System.out.println(market.marketNumber("300000"));
    }

}