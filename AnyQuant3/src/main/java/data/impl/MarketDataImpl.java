package data.impl;

import dao.entity.BenchmarkAttribute;
import dao.service.StockReadService;
import dao.tool.BenchmarkHelper;
import data.dataservice.MarketDataService;
import po.StockPO;
import util.exception.NotFoundException;

import java.util.HashMap;
import java.util.List;

/**
 * Created by kylin on 16/6/1.
 * All rights reserved.
 */
public class MarketDataImpl implements MarketDataService {


    private StockReadService readservice;

    public MarketDataImpl(StockReadService readservice) {
        this.readservice = readservice;
    }

    @Override
    public HashMap<String, String> getAllBenchmark() {
        return readservice.getAllBenchmark();
    }

    @Override
    public StockPO getBenchmark(String bench) throws NotFoundException {
        List<BenchmarkAttribute> list = readservice.getBenchmark(bench);
        HashMap<String, HashMap<String, String>> map = new HashMap<String, HashMap<String, String>>();
        for (BenchmarkAttribute attr : list) {
            map.put(attr.getDate(), BenchmarkHelper.getAttribute(attr));
        }
        StockPO po = new StockPO(bench, map);
        return po;
    }
}
