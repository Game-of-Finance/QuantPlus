package data.impl;

import dao.impl.StockReader;
import data.dataservice.MarketDataService;
import org.junit.Test;
import po.StockPO;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/**
 * Created by JiachenWang on 2016/6/1.
 */
public class MarketDataImplTest {
    @Test
    public void getAllBenchmark() throws Exception {
        MarketDataService impl = new MarketDataImpl(new StockReader());
        HashMap<String, String> map = impl.getAllBenchmark();
        Set<Map.Entry<String, String>> set = map.entrySet();
        for (Map.Entry<String, String> entry : set) {
            System.out.print(entry.getKey() + "-->");
            System.out.println(entry.getValue());
        }
    }

    @Test
    public void getBenchmark() throws Exception {
        MarketDataService impl = new MarketDataImpl(new StockReader());
        StockPO po = impl.getBenchmark("hs300");
        System.out.println(po.getInfomation().size());
        po = impl.getBenchmark("sh");
        System.out.println(po.getInfomation().size());
        po = impl.getBenchmark("sz");
        System.out.println(po.getInfomation().size());
    }

}