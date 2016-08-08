package dao.impl;

import org.junit.Test;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/**
 * Created by JiachenWang on 2016/6/6.
 */
public class TradeReaderTest {
    @Test
    public void getTrade() throws Exception {
        TradeReader reader = new TradeReader();
        System.out.println(reader.getTrade("sh600600", "2016-06-09").size());
//        System.out.println(reader.getTrade("sh600600", "2016-06-12").get(0).getTime());
//        System.out.println(reader.getTrade("sh600600", "2016-06-12").get(1));
//        System.out.println(reader.getTrade("sh600600", "2016-06-12").get(2));
    }

    @Test
    public void getPieVolumeInfo() throws Exception {
        TradeReader reader = new TradeReader();
        HashMap<String, Double> map = reader.getPieVolumeInfo("sh600064", "2016-05-24", "2016-06-03");
        Iterator iter = map.entrySet().iterator();
        while(iter.hasNext()) {
            Map.Entry entry = (Map.Entry) iter.next();
            String key = (String)entry.getKey();
            Double val = (Double)entry.getValue();
            System.out.println(key + "----" + val);
        }
    }

    @Test
    public void getPieAmountInfo() throws Exception {
        TradeReader reader = new TradeReader();
        HashMap<String, Double> map = reader.getPieAmountInfo("sh600064", "2016-05-24", "2016-06-03");
        Iterator iter = map.entrySet().iterator();
        while(iter.hasNext()) {
            Map.Entry entry = (Map.Entry) iter.next();
            String key = (String)entry.getKey();
            Double val = (Double)entry.getValue();
            System.out.println(key + "----" + val);
        }
    }

}