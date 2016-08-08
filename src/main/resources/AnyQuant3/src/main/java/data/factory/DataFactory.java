package data.factory;

import dao.factory.DaoFactory;
import dao.impl.StockReader;
import dao.service.StockReadService;
import data.dataservice.*;
import data.impl.*;

/**
 * Created by JiachenWang on 2016/5/16.
 */
public class DataFactory{
    /**
     * 数据实现的提供工厂,单件模式
     * volatile确保实例被初始化的时候,多个线程正确处理实例变量
     */
    private volatile static DataFactory dataFactory;

    private StockDataService stockDataService;
    private AnalysisDataService analysisDataService;
    private MarketDataService marketDataService;
    private IndustryDataService industryDataService;
    private InfoMineDataService infoMineDataService;

    private DataFactory()  {
        StockReadService readservice = DaoFactory.getInstance().getStockReadService();
        stockDataService = new StockDataImpl(readservice);
        analysisDataService = new AnalysisDataImpl(DaoFactory.getInstance().getTradeService());
        marketDataService = new MarketDataImpl(readservice);
        industryDataService = new IndustryDataImpl();
        infoMineDataService = new InfoMineDataImpl();
    }

    public static DataFactory getInstance(){
        if (dataFactory == null) {
            //如果实例没有被创建,进行同步,只有第一次同步加锁
            synchronized (DataFactory.class) {
                if (dataFactory == null)
                    dataFactory = new DataFactory();
            }
        }
        return dataFactory;
    }

    public AnalysisDataService getAnalysisDataService() {
        return analysisDataService;
    }

    public StockDataService getStockDataService() {
        return stockDataService;
    }

    public MarketDataService getMarketDataService() {
        return marketDataService;
    }

    public IndustryDataService getIndustryDataService() {
        return industryDataService;
    }

    public InfoMineDataService getInfoMineDataService() {
        return infoMineDataService;
    }
}