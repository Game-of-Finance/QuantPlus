package data.impl;

import dao.entity.Variance;
import dao.entity.TradeDao;
import dao.factory.DaoFactory;
import dao.service.TradeService;
import dao.service.VarianceService;
import data.dataservice.AnalysisDataService;
import po.TradeInfoLine;
import po.TradeInfoPO;
import util.exception.NotFoundException;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * Created by JiachenWang on 2016/6/6.
 */
public class AnalysisDataImpl implements AnalysisDataService {

    private TradeService tradeService;

    public AnalysisDataImpl(TradeService tradeService) {
        this.tradeService = tradeService;
    }

    @Override
    public TradeInfoPO getTradeInfo(String number, String date) throws NotFoundException {
        List<TradeDao> list = tradeService.getTrade(number, date);
        HashMap<String, TradeInfoLine> info = new HashMap<String, TradeInfoLine>();
        for (TradeDao dao : list) {
            info.put(dao.getTime(), new TradeInfoLine(dao));
        }
        return new TradeInfoPO(info, number, date);
    }

    @Override
    public HashMap<String, Double> getVolumeInfo(String number, String start, String end) throws NotFoundException {
        return tradeService.getPieVolumeInfo(number, start, end);
    }

    @Override
    public HashMap<String, Double> getAmountInfo(String number, String start, String end) throws NotFoundException {
        return tradeService.getPieAmountInfo(number, start, end);
    }

    @Override
    public List<String> getAllVariance(String time) throws NotFoundException {
        VarianceService io = DaoFactory.getInstance().getVarianceService();
        List<Variance> vars = io.getAllVariance(time);
        List<String> list = new ArrayList<String>();
        for (Variance var : vars)
            list.add(var.getValue());
        return list;
    }

    @Override
    public String getVariance(String time, String stock_num) throws NotFoundException {
        VarianceService io = DaoFactory.getInstance().getVarianceService();
        return io.getVariance(time, stock_num).getValue();
    }

    @Override
    public String getTradeDate(String stock_num) {
        return tradeService.getTradeDate(stock_num);
    }

}
