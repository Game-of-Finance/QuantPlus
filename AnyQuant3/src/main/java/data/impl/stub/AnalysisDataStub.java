package data.impl.stub;

import data.dataservice.AnalysisDataService;
import po.TradeInfoLine;
import po.TradeInfoPO;
import util.enums.TradeEnum;
import util.exception.NotFoundException;

import java.util.HashMap;
import java.util.List;

/**
 * Created by JiachenWang on 2016/6/6.
 */
public class AnalysisDataStub implements AnalysisDataService {

    @Override
    public TradeInfoPO getTradeInfo(String number, String time) throws NotFoundException {
        HashMap<String, TradeInfoLine> stockTradeInfo = new HashMap<>();
        stockTradeInfo.put("09:00",new TradeInfoLine(1,"09:00",10,1,100000,200000, TradeEnum.BUY));
        stockTradeInfo.put("09:05",new TradeInfoLine(1,"09:00",11,1,100000,200000, TradeEnum.BUY));
        stockTradeInfo.put("09:10",new TradeInfoLine(1,"09:00",12,1,100000,200000, TradeEnum.BUY));
        stockTradeInfo.put("09:20",new TradeInfoLine(1,"09:00",13,1,100000,200000, TradeEnum.BUY));
        stockTradeInfo.put("09:30",new TradeInfoLine(1,"09:00",14,1,100000,200000, TradeEnum.BUY));
        stockTradeInfo.put("09:40",new TradeInfoLine(1,"09:00",15,1,100000,200000, TradeEnum.BUY));
        stockTradeInfo.put("09:50",new TradeInfoLine(1,"09:00",16,1,100000,200000, TradeEnum.BUY));
        stockTradeInfo.put("09:60",new TradeInfoLine(1,"09:00",18,1,100000,200000, TradeEnum.BUY));
        stockTradeInfo.put("10:00",new TradeInfoLine(1,"09:00",19,1,100000,200000, TradeEnum.BUY));
        return new TradeInfoPO(stockTradeInfo);
    }

    @Override
    public HashMap<String, Double> getVolumeInfo(String number, String start, String end) {
        return new HashMap<>();
    }

    @Override
    public HashMap<String, Double> getAmountInfo(String number, String start, String end) {
        return new HashMap<>();
    }

    @Override
    public List<String> getAllVariance(String time) throws NotFoundException {
        return null;
    }

    @Override
    public String getVariance(String time, String stock_num) throws NotFoundException {
        return null;
    }

    @Override
    public String getTradeDate(String num) {
        return null;
    }
}
