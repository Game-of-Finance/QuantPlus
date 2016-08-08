package data.impl;

import dao.impl.TradeReader;
import data.dataservice.AnalysisDataService;
import org.junit.Test;
import po.TradeInfoPO;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/**
 * Created by JiachenWang on 2016/6/6.
 */
public class AnalysisDataImplTest {
    @Test
    public void getTradeDate() throws Exception {
        AnalysisDataService t = new AnalysisDataImpl(new TradeReader());
        System.out.println(t.getTradeDate("sh600018"));
    }

    @Test
    public void getTradeInfo() throws Exception {
        AnalysisDataService t = new AnalysisDataImpl(new TradeReader());
        TradeInfoPO po = t.getTradeInfo("sh600064", "2016-05-24");
        System.out.println(po.getPriceBySeconds("09:30:12"));
        System.out.println(po.getPriceBySeconds("14:06:02"));
    }

    @Test
    public void getVolumeInfo() throws Exception {
        AnalysisDataService t = new AnalysisDataImpl(new TradeReader());
        HashMap<String, Double> map = t.getVolumeInfo("sh600018", "2016-06-01", "2016-06-16");
        Iterator iter = map.entrySet().iterator();
        while(iter.hasNext()) {
            Map.Entry entry = (Map.Entry) iter.next();
            String key = (String)entry.getKey();
            Double val = (Double)entry.getValue();
            System.out.println(key + "----" + val);
        }
    }

    @Test
    public void getAmountInfo() throws Exception {
        AnalysisDataService t = new AnalysisDataImpl(new TradeReader());
        HashMap<String, Double> map = t.getAmountInfo("sh600064", "2016-05-24", "2016-06-03");
        Iterator iter = map.entrySet().iterator();
        while(iter.hasNext()) {
            Map.Entry entry = (Map.Entry) iter.next();
            String key = (String)entry.getKey();
            Double val = (Double)entry.getValue();
            System.out.println(key + "----" + val);
        }
    }

    @Test
    public void getVariance() throws Exception {
        AnalysisDataService t = new AnalysisDataImpl(new TradeReader());
        System.out.println(t.getAllVariance("2016-05"));
    }

}