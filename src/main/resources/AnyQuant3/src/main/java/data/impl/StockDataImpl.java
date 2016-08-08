package data.impl;

import dao.entity.StockAttribute;
import dao.service.StockReadService;
import dao.tool.StockHelper;
import data.dataservice.StockDataService;
import model.stock.OneDayInfo;
import po.StockPO;
import util.exception.NotFoundException;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by JiachenWang on 2016/5/12.
 */
public class StockDataImpl implements StockDataService {

    private HashMap<String, String> numAndName;
    private StockReadService readservice;

    public StockDataImpl(StockReadService readservice) {
        this.readservice = readservice;
    }

    @Override
    public HashMap<String, String> getStockNameAndNumber() {
        if (numAndName == null)
            numAndName = readservice.getStockNumAndName();
        else
            return numAndName;

        return numAndName;
    }

    @Override
    public String getNameByID(String number) throws NotFoundException {
        return readservice.getNameByID(number);
    }

    @Override
    public List<String> getIDLikeName(String name) throws NotFoundException {
        return readservice.getIDLikeName(name);
    }


    @Override
    public StockPO getStock(String num) throws NotFoundException {
        List<StockAttribute> list = readservice.getStock(num);
        HashMap<String, HashMap<String, String>> map = new HashMap<String, HashMap<String, String>>();
        for (StockAttribute attr : list) {
            map.put(attr.getDate(), StockHelper.getAttribute(attr));
        }
        StockPO po = new StockPO(num, map);

        //判断股票列表是否初始化
        if (numAndName == null)
            numAndName = readservice.getStockNumAndName();

        //获取股票名字
        String name = "";
        for (Map.Entry<String, String> entry : this.numAndName.entrySet()) {
            if (entry.getValue().equalsIgnoreCase(num)) {
                name = entry.getKey();
                break;
            }
        }
        po.setName(name);
        return po;
    }

    @Override
    public HashMap<String, HashMap<String, String>> getNamesAndNames() {
        return readservice.getNamesAndNames();
    }

    @Override
    public List<OneDayInfo> getLatest() {

        List<StockAttribute> list = readservice.getLastest();
        //最近一个工作日前一个工作日所有股票收盘价
        HashMap<String, String> before = readservice.getCloseBeforeLastest(list.get(0).getDate());

        List<OneDayInfo> result = new ArrayList<OneDayInfo>();
        for (StockAttribute attr : list) {
            HashMap<String, String> map = StockHelper.getAttribute(attr);
            double before_close = Double.parseDouble(before.get(attr.getId()));
            //收盘价无数据情况
            if (before_close == 0) {
                map.put("change", String.valueOf(0.0));
                continue;
            }
            //计算涨跌幅
            double change = Double.parseDouble(attr.getClose()) - before_close;
            change = change / before_close;
            if (map.get("change") == null)
                map.put("change", String.valueOf(change));
            try {
                result.add(new OneDayInfo(attr.getDate(), map, this.getNameByID(attr.getId())));
            } catch (NotFoundException e) {
                e.printStackTrace();
            }
        }
        return result;
    }

}
