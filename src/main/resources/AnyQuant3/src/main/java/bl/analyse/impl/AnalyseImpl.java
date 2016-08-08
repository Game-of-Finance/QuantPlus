package bl.analyse.impl;

import bl.analyse.service.TechnicalAnalysisStrategy;
import bl.analyse.service.AnalyseService;
import bl.service.StockService;
import model.analyse.ARBResult;
import model.analyse.MACDResult;
import model.common.LinearChartVO;
import model.common.MyChartSeries;
import model.stock.BasicSingleVO;
import model.stock.StockAttribute;
import model.stock.StockVO;
import util.constant.SomeConstant;
import util.enums.LinearChartType;
import util.exception.BadInputException;
import util.exception.NotFoundException;
import util.time.DateCount;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by JiachenWang on 2016/3/23.
 */
public class AnalyseImpl implements AnalyseService {

    private StockService stockService;

    private TechnicalAnalysisStrategy strategy;

    public AnalyseImpl(StockService stockService) throws NotFoundException {
        this.strategy = new TechnicalAnalysis();
        this.stockService = stockService;
    }

    @Override
    public BasicSingleVO getBasicSingleInfo(StockVO stockVO,String startDate,String endDate)
            throws BadInputException, NotFoundException {

        BasicSingleVO basicSingleVO = new BasicSingleVO();
        basicSingleVO.setStock_name(stockVO.getName());
        basicSingleVO.setStock_num(stockVO.getNumber());


        StockVO stock_macd = this.stockService.getStock(
                stockVO.getNumber(), DateCount.count(endDate, -150),
                endDate, SomeConstant.field.all, new ArrayList<>());


        //计算各种指标

        //心理指数
        int dayUp = 0;
        int days = stockVO.numberOfDays();
        for (int j = 0; j < days; j++) {
            double change = stockVO.changeAtDay(j);
            if (change > 0)
                dayUp += 1;
        }
        basicSingleVO.setPsychologicalValue(dayUp + 0.0 / days * 100);

        List<StockAttribute> stockAttributeList = stockVO.getAttributes();
        double max = -1;
        double min = 1000;
        double dayOne = stockVO.priceAtDay(0);
        double yesterdayPrice = dayOne;

        double sumOfVar = 0;
        double sumOfTurnover = 0;
        double sumOfPe_ttm = 0;
        double sumOfPb = 0;
        for (StockAttribute stockAttribute : stockAttributeList) {
            double close = Double.parseDouble(stockAttribute.getAttribute("close"));
            //涨跌幅 = 所有天数涨跌幅的平均值
            double var = (close - yesterdayPrice) / yesterdayPrice * 100;
            sumOfVar += var;
            yesterdayPrice = close;

            //股票平均换手率
            double turnover = Double.parseDouble(stockAttribute.getAttribute("turnover"));
            sumOfTurnover += turnover;

            //股票平均市盈率
            double pe_ttm = Double.parseDouble(stockAttribute.getAttribute("pe_ttm"));
            sumOfPe_ttm += pe_ttm;

            double pb = Double.parseDouble(stockAttribute.getAttribute("pb"));
            sumOfPb += pb;

            //统计最大最小值
            if (close > max)
                max = close;
            if (close < min)
                min = close;
        }
        //振幅:以本周期的最高价与最低价的差，除以上一周期的收盘价，再以百分数表示的数值。
        double rise = max - min;
        basicSingleVO.setVariableRange(rise / dayOne * 100);

        //涨跌幅 = 所有天数涨跌幅的平均值
        double varEven = sumOfVar / days;
        basicSingleVO.setRiseAndFall(varEven);


        basicSingleVO.setAvgTurnover(sumOfTurnover / days);

        basicSingleVO.setAvgPe(sumOfPe_ttm / days);

        basicSingleVO.setAvgPb(sumOfPb / days);

        return basicSingleVO;
    }

    @Override
    public LinearChartVO getStockRSI(StockVO stockVO) throws BadInputException, NotFoundException {

        Map<String, Double> RSI6 = strategy.calculateRSI(stockVO, 6);
        Map<String, Double> RSI12 = strategy.calculateRSI(stockVO, 12);
        Map<String, Double> RSI25 = strategy.calculateRSI(stockVO, 25);

        MyChartSeries series1 = new MyChartSeries("6日指标", RSI6);
        MyChartSeries series2 = new MyChartSeries("12日指标", RSI12);
        MyChartSeries series3 = new MyChartSeries("24日指标", RSI25);

        List<MyChartSeries> myChartSeries = new ArrayList<>();
        myChartSeries.add(series1);
        myChartSeries.add(series2);
        myChartSeries.add(series3);

        return new LinearChartVO(myChartSeries, LinearChartType.RSI);
    }

    @Override
    public LinearChartVO getStockEMA(StockVO stockVO) throws BadInputException, NotFoundException {

        Map<String, Double> EMA6 = strategy.calculateEMA(stockVO, 6);
        Map<String, Double> EMA12 = strategy.calculateEMA(stockVO, 12);
        Map<String, Double> EMA50 = strategy.calculateEMA(stockVO, 35);

        MyChartSeries ema6s = new MyChartSeries("6日指数", EMA6);
        MyChartSeries ema12s = new MyChartSeries("12日指数", EMA12);
        MyChartSeries ema50s = new MyChartSeries("35日指数", EMA50);

        List<MyChartSeries> myChartSeries = new ArrayList<>();
        myChartSeries.add(ema6s);
        myChartSeries.add(ema12s);
        myChartSeries.add(ema50s);

        return new LinearChartVO(myChartSeries, LinearChartType.EMA);
    }

    @Override
    public LinearChartVO getStockMACD(StockVO stockVO) throws BadInputException, NotFoundException {

        MACDResult macdResult = strategy.calculateMACD(stockVO);

        MyChartSeries series1 = new MyChartSeries("MACD指数", macdResult.getMacd());
        MyChartSeries series2 = new MyChartSeries("DIF指数", macdResult.getDif());

        MyChartSeries series3 = new MyChartSeries("柱状图属性", macdResult.getBarValue());

        List<MyChartSeries> myChartSeries = new ArrayList<>();
        myChartSeries.add(series1);
        myChartSeries.add(series2);

        return new LinearChartVO(myChartSeries, LinearChartType.MACD);

    }

    @Override
    public LinearChartVO getStockARBR(StockVO stockVO) throws BadInputException, NotFoundException {
        ARBResult arbResult = strategy.calculateARBR(stockVO,26);

        Map<String, Double> ar = arbResult.getAr();
        Map<String, Double> br = arbResult.getBr();

        MyChartSeries series1 = new MyChartSeries("AR指标", ar);
        MyChartSeries series2 = new MyChartSeries("BR指标", br);

        List<MyChartSeries> myChartSeries = new ArrayList<>();
        myChartSeries.add(series1);
        myChartSeries.add(series2);

        return new LinearChartVO(myChartSeries, LinearChartType.RSI);
    }

}

