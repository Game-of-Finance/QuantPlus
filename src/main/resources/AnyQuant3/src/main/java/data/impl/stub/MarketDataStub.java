package data.impl.stub;

import data.dataservice.MarketDataService;
import po.StockPO;
import util.exception.NotFoundException;
import util.time.DateCount;

import java.text.DecimalFormat;
import java.util.Date;
import java.util.HashMap;

/**
 * Created by JiachenWang on 2016/6/1.
 */
public class MarketDataStub implements MarketDataService {

    @Override
    public HashMap<String, String> getAllBenchmark() {
        return new HashMap<String, String>();
    }

    @Override
    public StockPO getBenchmark(String bench) throws NotFoundException {
        Date today = new Date();
        String strToday = DateCount.dateToStr(today);

        int size = 1000;

        HashMap<String, HashMap<String, String>> result = new HashMap<>();
        for (int i = 1; i <= size; i++) {
            strToday = DateCount.count(strToday,-1);
            double price = Math.random() * 10;

            result.put(strToday,setStock(price));
        }

        StockPO po = new StockPO("sh300", result);
        po.setName("上证综指");
        return po;
    }

    private HashMap<String,String> setStock(double price){
        DecimalFormat df = new DecimalFormat("0.00");

        double var = Math.random() * 2;

        double open = price;
        double high = open+var;
        double low = open-var;
        double close = open + (Math.random()-0.5) * 4;

        HashMap<String,String> oneIndx = new HashMap<>();

        oneIndx.put("open",df.format(price));
        oneIndx.put("high",df.format(high));
        oneIndx.put("low",df.format(low));
        oneIndx.put("close",df.format(close));
        oneIndx.put("adj_price",df.format(Math.random()*2));
        oneIndx.put("volume",df.format(Math.random()*200000));
        oneIndx.put("turnover",df.format(Math.random()*5));
        oneIndx.put("pe_ttm",df.format(Math.random()*2));
        oneIndx.put("pb",df.format(Math.random()*3));

        return oneIndx;
    }

}
