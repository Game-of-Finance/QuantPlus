package bl.factory;

import bl.analyse.accuracy.AccuracyEvaluate;
import bl.analyse.accuracy.AccuracyService;
import bl.analyse.impl.AnalyseImpl;
import bl.analyse.impl.PredictBLImpl;
import bl.analyse.impl.TechnicalAnalysis;
import bl.analyse.service.AnalyseService;
import bl.analyse.service.PredictBLService;
import bl.analyse.service.TechnicalAnalysisStrategy;
import bl.impl.*;
import bl.service.*;
import bl.tool.barchart.BarChartImpl;
import bl.tool.barchart.BarChartService;
import bl.tool.piechart.PieChartImpl;
import bl.tool.piechart.PieChartService;
import util.exception.NotFoundException;

/**
 * Created by kylin on 16/3/17.
 */
public class BLFactory {

    private StockService stockService;

    private AnalyseService analyseService;

    private IndustryService industryService;

    private BarChartService barChartService;

    private PieChartService pieChartService;

    private MarketService marketService;

    private ChartService chartService;

    private InfoMineService infoMineService;

    private PredictBLService predictBLService;

    private TechnicalAnalysisStrategy technicalAnalysisStrategy;

    private AccuracyService accuracyService;

    private SearchService searchService;

    private static BLFactory instance;

    private BLFactory() throws NotFoundException {
        stockService = new StockImpl();
        marketService = new MarketImpl();

        analyseService = new AnalyseImpl(stockService);
        industryService = new IndustryImpl();

        barChartService = new BarChartImpl();
        pieChartService = new PieChartImpl();

        chartService = new ChartImpl();
        infoMineService = new InfoMineImpl();

        technicalAnalysisStrategy = new TechnicalAnalysis();
        predictBLService = new PredictBLImpl(stockService,technicalAnalysisStrategy);

        searchService = new SearchImpl();
        accuracyService = new AccuracyEvaluate(stockService, technicalAnalysisStrategy);
    }

    public static BLFactory getInstance() throws NotFoundException {
        if (instance == null)
            instance = new BLFactory();
        return instance;
    }

    public AnalyseService getAnalyseService() {
        return analyseService;
    }

    public IndustryService getIndustryService() {
        return industryService;
    }

    public StockService getStockService() {
        return stockService;
    }

    public MarketService getMarketService() {
        return marketService;
    }

    public BarChartService getBarChartService() {
        return barChartService;
    }

    public PieChartService getPieChartService() {
        return pieChartService;
    }

    public ChartService getChartService() {
        return chartService;
    }

    public InfoMineService getInfoMineService() {
        return infoMineService;
    }

    public PredictBLService getPredictBLService() {
        return predictBLService;
    }

    public TechnicalAnalysisStrategy getTechnicalAnalysisStrategy() {
        return technicalAnalysisStrategy;
    }

    public AccuracyService getAccuracyService() {
        return accuracyService;
    }

    public SearchService getSearchService() {
        return searchService;
    }
}
