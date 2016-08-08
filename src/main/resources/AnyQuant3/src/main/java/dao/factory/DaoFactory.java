package dao.factory;

import dao.impl.*;
import dao.service.*;
import data.factory.DataFactory;

/**
 * Created by JiachenWang on 2016/6/6.
 */
public class DaoFactory {

    /**
     * DAO层实现的提供工厂,单件模式
     * volatile确保实例被初始化的时候,多个线程正确处理实例变量
     */
    private volatile static DaoFactory daoFactory;

    private IndustryService industryService;
    private InfoMineService infoMineService;
    private StockReadService stockReadService;
    private StockWriteService stockWriteService;
    private TradeService tradeService;
    private VarianceService varianceService;

    private DaoFactory(){
        industryService = new IndustryIO();
        infoMineService = new InfoMineReader();
        stockReadService = new StockReader();
        stockWriteService = new StockWriter();
        tradeService = new TradeReader();
        varianceService = new VarianceIO();
    }

    public static DaoFactory getInstance(){
        if (daoFactory == null) {
            //如果实例没有被创建,进行同步,只有第一次同步加锁
            synchronized (DataFactory.class) {
                if (daoFactory == null)
                    daoFactory = new DaoFactory();
            }
        }
        return daoFactory;
    }

    public IndustryService getIndustryService() {
        return industryService;
    }

    public InfoMineService getInfoMineService() {
        return infoMineService;
    }

    public StockReadService getStockReadService() {
        return stockReadService;
    }

    public TradeService getTradeService() {
        return tradeService;
    }

    public StockWriteService getStockWriteService() {
        return stockWriteService;
    }

    public VarianceService getVarianceService() {
        return varianceService;
    }
}
