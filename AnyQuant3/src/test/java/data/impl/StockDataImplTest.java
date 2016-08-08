package data.impl;

import dao.impl.StockReader;
import model.stock.OneDayInfo;
import org.junit.Test;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 * Created by JiachenWang on 2016/6/1.
 */
public class StockDataImplTest {

    @Test
    public void getStockNameAndNumber() throws Exception {
        StockDataImpl t = new StockDataImpl(new StockReader());
        HashMap map = t.getStockNameAndNumber();
        Iterator iter = map.entrySet().iterator();
        while(iter.hasNext()) {
            Map.Entry entry = (Map.Entry) iter.next();
            String key = (String)entry.getKey();
            String val = (String)entry.getValue();
            System.out.println(key + "----" + val);
        }
    }

    @Test
    public void getNamesAndNames() throws Exception {
        StockDataImpl t = new StockDataImpl(new StockReader());
        HashMap map = t.getNamesAndNames();
        Iterator iter = map.entrySet().iterator();
        while(iter.hasNext()) {
            Map.Entry entry = (Map.Entry) iter.next();
            String key = (String)entry.getKey();
            HashMap val = (HashMap)entry.getValue();
            System.out.println(key + "----" + val.size());
        }
    }

    @Test
    public void getStock() throws Exception {
        StockDataImpl t = new StockDataImpl(new StockReader());
        t.getStock("sh600600");
        System.out.println(t.getStock("sh600600").getInfomation().size());
    }

    @Test
    public void getNameByID() throws Exception {
        StockDataImpl t = new StockDataImpl(new StockReader());
        System.out.println(t.getNameByID("sh600600"));
    }

    @Test
    public void getIDLikeName() throws Exception {
        StockDataImpl t = new StockDataImpl(new StockReader());
        System.out.println(t.getIDLikeName("青"));
        List<String> list = t.getIDLikeName("青");
        for (String tmp : list) {
            System.out.println(tmp);
            System.out.println(t.getNameByID(tmp));
        }
    }

    @Test
    public void getLatest() throws Exception {
        StockDataImpl t = new StockDataImpl(new StockReader());
        List<OneDayInfo> list =  t.getLatest();
        for (OneDayInfo tmp : list) {
//            System.out.println(tmp.getDate());
            System.out.println(tmp.getChange());
        }
    }

}