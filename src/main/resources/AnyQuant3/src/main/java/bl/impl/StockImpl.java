package bl.impl;


import bl.service.StockService;
import bl.tool.FormatCheck;
import data.dataservice.AnalysisDataService;
import data.dataservice.StockDataService;
import data.factory.DataFactory;
import model.stock.ConditionSelect;
import model.stock.OneDayInfo;
import model.stock.StockVO;
import po.StockPO;
import util.constant.StockConstant;
import util.exception.BadInputException;
import util.exception.NotFoundException;
import util.time.DateCount;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by kylin on 16/3/4.
 */
public class StockImpl implements StockService {

    private StockDataService stockDataService;
    private AnalysisDataService analysisDataService;

    public StockImpl() throws NotFoundException {
        stockDataService = DataFactory.getInstance().getStockDataService();
        analysisDataService = DataFactory.getInstance().getAnalysisDataService();
    }

    @Override
    public String getStockName(String num) throws NotFoundException {
        for (Map.Entry<String, String> entry : stockDataService.getStockNameAndNumber().entrySet()) {
            //编号在后
            if (entry.getValue().equalsIgnoreCase(num))
                return entry.getKey();
        }
        throw new NotFoundException(num+" 对应的股票不存在");
    }

    @Override
    public String getStockNumber(String name) throws NotFoundException {
        HashMap<String,String> hashMap = stockDataService.getStockNameAndNumber();
        if(hashMap.containsKey(name)){
            return hashMap.get(name);
        }else
            throw new NotFoundException(name+"对应的股票不存在");
    }

    @Override
    public StockVO getStock(String number, String start, String end, String fields, List<ConditionSelect> ranges) throws NotFoundException, BadInputException {
        FormatCheck.isDateBefore(start, end);
        //从数据层调取数据包
        StockPO po = this.stockDataService.getStock(number);
        //变为VO
        return new StockVO(po, start, end);
    }

    @Override
    public StockVO getLatestStock(String num, int numOfDays, String fields, List<ConditionSelect> ranges) throws NotFoundException, BadInputException {
        //从数据层调取数据包
        StockPO po = this.stockDataService.getStock(num);
        //寻找有效区间
        String end = DateCount.dateToStr(new Date());
        String start = end;
        int count = 0;
        while(count!=numOfDays){
            start = DateCount.count(start, -1);
            if (po.hasInfo(start))
                ++count;
        }
        //变为VO
        return new StockVO(po, start, end);
    }

    @Override
    public OneDayInfo getLatestOneDay(String num) throws NotFoundException {
        StockPO po = this.stockDataService.getStock(num);
        String latestDate = po.getLatestDate();
        HashMap<String, String> map = po.getOneDayInfo(latestDate);
        return new OneDayInfo(latestDate,map,po.getName());
    }

    @Override
    public String getLatestDate(String number) {
        return this.analysisDataService.getTradeDate(number);
    }

    @Override
    public StockVO getStock(String num, String start, String end) throws NotFoundException, BadInputException {
        return this.getStock(num,start,end,StockConstant.AllFields,null);
    }

}
