package bl.analyse.accuracy;

import bl.analyse.service.TechnicalAnalysisStrategy;
import bl.factory.BLFactory;
import bl.service.StockService;
import model.analyse.ARBResult;
import model.analyse.MACDResult;
import model.stock.StockVO;
import util.constant.SomeConstant;
import util.constant.StockConstant;
import util.enums.AttributeEnum;
import util.exception.BadInputException;
import util.exception.NotFoundException;
import util.math.LinearRegression;
import util.math.arima.ARIMAPredict;
import util.math.sort.MyHashItem;
import util.math.sort.MySort;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by kylin on 16/6/13.
 * All rights reserved.
 */
public class AccuracyEvaluate implements AccuracyService{

    private StockService stockService;

    private TechnicalAnalysisStrategy strategy;

    public AccuracyEvaluate(StockService stockService, TechnicalAnalysisStrategy strategy) throws NotFoundException {
        this.stockService = stockService;
        this.strategy = strategy;
    }

    public double analyseMACD(String stock_num) throws BadInputException, NotFoundException {
        double rate = 0;
        //200天的数据包
        StockVO stock = this.stockService.getLatestStock(
                stock_num, 201, SomeConstant.field.all, new ArrayList<>());

        MACDResult macdResult = strategy.calculateMACD(stock);
        List<MyHashItem> list = MySort.sortHashmapByKey(macdResult.getMacd());

        //每次预测需要的时间跨度
        int period = 150;

        //要验证多少次
        int evaluateSize = 50;
        //时间指针（list的index）
        int startIndex = 0;
        int endIndex = startIndex + period - 1;
        int tomorrowIndex = endIndex + 1;
        //主循环
        for (int i = 1; i <= evaluateSize; i++) {

            double[] arg1 = new double[period];
            double[] arg2 = new double[period];
            for (int j = 0; j < period; j++) {
                arg1[j] = j + 1;
                arg2[j] = (double) list.get(startIndex + j).getValue();
            }
            double gradient = LinearRegression.calculateLR_b(arg1, arg2, period);

            double macd_avg = 0;
            for (int j = 0; j < period; j++)
                macd_avg += (double) list.get(startIndex + j).getValue();
            macd_avg = macd_avg / period;

            boolean predictRise = true;
            //预测结论
            if (macd_avg > 0 && gradient > 0)
                predictRise = true;
            else if (macd_avg < 0 && gradient < 0)
                predictRise = false;
            else if (macd_avg > 0 && gradient < 0)
                predictRise = false;
            else if (macd_avg < 0 && gradient > 0)
                predictRise = true;
            else if (gradient == 0)
                predictRise = true;

            //真实数据的涨跌情况
            boolean reality = stock.riseAtDay(tomorrowIndex);

            if (reality == predictRise) {
                rate++;
            }
            startIndex += 1;
            endIndex += 1;
            tomorrowIndex = endIndex + 1;
        }

        return (rate / evaluateSize) * 100;
    }


    public double analyseArbr(String stock_num) throws BadInputException, NotFoundException {
        double rate = 0;
        //170天的数据包
        StockVO stockVO = stockService.getLatestStock(stock_num, 170, StockConstant.AllFields, null);

        int step = 14;
        ARBResult arbr = strategy.calculateARBR(stockVO, step);

        //每次预测需要的时间跨度
        int period = 100;
        List<MyHashItem> ar_list = MySort.sortHashmapByKey(arbr.getAr());
        List<MyHashItem> br_list = MySort.sortHashmapByKey(arbr.getAr());

        //要验证多少次
        int evaluateSize = 50;
        //时间指针（list的index）
        int startIndex = 0;
        int endIndex = startIndex + period - 1;
        int tomorrowIndex = endIndex + 1;
        //主循环
        for (int i = 1; i <= evaluateSize; i++) {

            double ar = (double) ar_list.get(endIndex).getValue();

            double[] arg1 = new double[period];
            double[] arg2 = new double[period];
            for (int j = 0; j < period; j++) {
                arg1[j] = j + 1;
                arg2[j] = (double) ar_list.get(startIndex + j).getValue();
            }
            double ar_b = LinearRegression.calculateLR_b(arg1, arg2, period);

            for (int j = 0; j < period; j++) {
                arg2[j] = (double) br_list.get(startIndex + j).getValue();
            }
            double br_b = LinearRegression.calculateLR_b(arg1, arg2, period);

            boolean predictRise = true;

            //预测结论
            if (ar_b >= 0 && br_b >= 0 && ar < 150)
                predictRise = true;
            else if (ar_b >= 0 && br_b >= 0 && ar >= 150)
                predictRise = false;
            else if (ar > 80 && ar < 120 && br_b < 0)
                predictRise = true;
            else if (ar_b < 0 && br_b >= 0)
                predictRise = false;
            else{
                if (ar <= 50)
                    predictRise = true;
                else if (ar >= 80 && ar <= 120)
                    predictRise = true;
                else if (ar >= 150)
                    predictRise = false;
            }

            //真实数据的涨跌情况
            boolean reality = stockVO.riseAtDay(tomorrowIndex);

            if (reality == predictRise) {
                rate++;
            }
            startIndex += 1;
            endIndex += 1;
            tomorrowIndex = endIndex + 1;
        }

        return (rate / evaluateSize) * 100;
    }

    public double analyseRSI(String number) throws NotFoundException, BadInputException {
        double rate = 0;
        //获取最近几十天的数据
        StockVO stockVO = stockService.getLatestStock(number, 200, StockConstant.AllFields, null);

        //计算不同间隔的RSI数值
        Map<String, Double> rsi14 = strategy.calculateRSI(stockVO, 14);
        List<MyHashItem> list14 = MySort.sortHashmapByKey(rsi14);
        //计算间隔指定时间RSI指数的均值
        int step = 5;

        //要验证多少次
        int evaluateSize = 20;
        for (int i = 1; i <= evaluateSize; i++) {

            //对于每一次的分析,计算指定间隔的RSI数值
            int startIndex = list14.size() - i - step;
            int endIndex = list14.size() - i - 1;
            int tomorrowIndex = endIndex + 1;

            double ave14 = 0;
            for (int j = startIndex; j <= endIndex; j++) {
                MyHashItem hashItem = list14.get(j);
                ave14 += (double) hashItem.getValue();
            }
            ave14 = ave14 / step;

            boolean predictRise = false;
            //预测要涨的情况
            if (ave14 <= 40)
                predictRise = true;

            //真实数据的涨跌情况
            boolean reality = stockVO.riseAtDay(tomorrowIndex);

            if (reality == predictRise) {
                rate++;
            }
        }

        return (rate / evaluateSize) * 100;
    }


    public double analyseArima(String stock_num, double threshold) throws BadInputException, NotFoundException {
        double rate = 0;
        StockVO stock = stockService.getLatestStock(stock_num, 100,
                AttributeEnum.OPEN.getEN() + "-" + AttributeEnum.CLOSE.getEN(), null);
        List<Double> prices = stock.getPriceLine();


        //计算间隔指定时间间隔的预测值
        int step = 15;

        //要验证多少次
        int evaluateSize = 20;
        for (int i = 1; i <= evaluateSize; i++) {
            //对于每一次的分析
            int startIndex = prices.size() - i - step;
            int endIndex = prices.size() - i - 1;
            int tomorrowIndex = endIndex + 1;
            List<Double> oneDataList = prices.subList(startIndex,endIndex+1);

            double predict = ARIMAPredict.getOneDayPredict(oneDataList);

            //真实数据的涨跌情况
            double reality = stock.priceAtDay(tomorrowIndex);

            //数据预测偏差
            double deviation = Math.abs(predict-reality)/reality;

            //预测偏差小于阈值,接受预测
            if( deviation < threshold )
                rate ++;
        }

        return (rate/step) * 100;
    }

}
