package dao.impl;

import dao.entity.StockAttribute;
import org.junit.Test;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 * Created by JiachenWang on 2016/6/6.
 */
public class StockReaderTest {
    @Test
    public void getNameByID() throws Exception {
        StockReader read = new StockReader();
        System.out.println(read.getNameByID("sh600600"));
    }

    @Test
    public void getIDLikeName() throws Exception {
        StockReader read = new StockReader();
        System.out.println(read.getIDLikeName("青"));
    }

    @Test
    public void getStockNumAndName() throws Exception {
        StockReader read = new StockReader();
        HashMap map = read.getStockNumAndName();
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
        StockReader read = new StockReader();
        HashMap map = read.getNamesAndNames();
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
        StockReader read = new StockReader();
        List<StockAttribute> list = read.getStock("sh600600");
        System.out.println(list.size());
        for(StockAttribute tmp : list){
            System.out.println(tmp.getId() + "----" + tmp.getDate());
        }
    }

    @Test
    public void getBenchmarkList() throws Exception {
        StockReader read = new StockReader();
        System.out.println(read.getBenchmarkList());
    }

    @Test
    public void getAllBenchmark() throws Exception {
        StockReader read = new StockReader();
        List<String> list = read.getBenchmarkList();
        System.out.println(list.size());
        System.out.println(list.get(0));
    }

    @Test
    public void getBenchmark() throws Exception {
        StockReader read = new StockReader();
        System.out.println(read.getBenchmark("hs300").size());
    }

    @Test
    public void getLastest() throws Exception {
        StockReader read = new StockReader();
        List<StockAttribute> list = read.getLastest();
        for (StockAttribute attr : list) {
            System.out.println(attr.getId() + "----" + attr.getClose());
        }
    }

    @Test
    public void getCloseBeforeLastest() throws Exception {
        StockReader read = new StockReader();
        HashMap<String, String> map = read.getCloseBeforeLastest("2016-06-10");
        Iterator iter = map.entrySet().iterator();
        while(iter.hasNext()) {
            Map.Entry entry = (Map.Entry) iter.next();
            String key = (String)entry.getKey();
            String val = (String)entry.getValue();
            System.out.println(key + "----" + val);
        }
    }

}