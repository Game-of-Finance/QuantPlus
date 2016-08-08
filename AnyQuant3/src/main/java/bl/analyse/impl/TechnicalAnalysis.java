package bl.analyse.impl;

import bl.analyse.service.TechnicalAnalysisStrategy;
import model.analyse.ARBResult;
import model.analyse.ComputableStock;
import model.analyse.MACDResult;
import util.exception.BadInputException;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by kylin on 16/4/9.
 */
public class TechnicalAnalysis implements TechnicalAnalysisStrategy {

    @Override
    public Map<String, Double> calculateRSI(ComputableStock computableStock, int step) throws BadInputException {
        HashMap<String, Double> rsiResult = new HashMap<>();

        int numberOfDays = computableStock.numberOfDays();
        if (numberOfDays <= 30)
            throw new BadInputException("数据包所含天数过少,RSI结果无意义");

        for (int i = step; i < numberOfDays; i++) {
            //从第一个可以计算出结果的日期开始
            String date = computableStock.dateString(i);

            //求过去step天中的涨幅跌幅
            double increase = 0;
            double decrease = 0;
            for (int j = 0; j < step; j++) {
                double change = computableStock.changeAtDay(i - j);
                if (change > 0)
                    increase += change;
                else
                    decrease -= change;
            }

            //求出相对强度RS
            double rs = increase / decrease;
            double rsi = rs / (1 + rs) * 100;

            rsiResult.put(date, rsi);
        }

        return rsiResult;
    }

    @Override
    public MACDResult calculateMACD(ComputableStock computableStock) throws BadInputException {
        Map<String, Double> MACDLine = new HashMap<>();
        Map<String, Double> EMA9 = new HashMap<>();

        int numberOfDays = computableStock.numberOfDays();

        if (numberOfDays <= 30)
            throw new BadInputException("数据包所含天数过少,MACD结果无意义");

        //1. Calculate a 12 day EMA of closing prices
        Map<String, Double> EMA12 = this.calculateEMA(computableStock, 12);

        //2. Calculate a 26 day EMA of closing prices
        Map<String, Double> EMA26 = this.calculateEMA(computableStock, 26);

        //3. Subtract the longer EMA in (2) from the shorter EMA in (1)
        for (int i = 1; i <= numberOfDays; i++) {
            String date = computableStock.dateString(i - 1);
            double ema1 = EMA12.get(date);
            double ema2 = EMA26.get(date);
            double differ = ema2 - ema1;
            MACDLine.put(date, differ);
        }
        MACDResult macdResult = new MACDResult(MACDLine, EMA9);

        //4. Calculate a 9 day EMA of the MACD line gotten in (3)
        EMA9 = this.calculateEMA(macdResult, 9);
        macdResult = new MACDResult(MACDLine, EMA9);

        return macdResult;
    }

    @Override
    public Map<String, Double> calculateEMA(ComputableStock computableStock, int step) throws BadInputException {
        HashMap<String, Double> result = new HashMap<>();
        int numberOfDays = computableStock.numberOfDays();

        double k = 2.0 / (step + 1.0);

        //输入参数防御
        if (step <= 1)
            throw new BadInputException("EMA间隔过小,结果无意义");
        if (numberOfDays <= 30 || numberOfDays < 2 * step)
            throw new BadInputException("数据包所含天数过少,EMA结果无意义");

        //默认填充第一天的数据为第一天的价格
        double priceAtDay0 = computableStock.priceAtDay(0);
        result.put(computableStock.dateString(0), priceAtDay0);

        //从第二天开始昨日的EMA以昨日价格代替知道可以计算出EMA为止
        double sum = priceAtDay0;
        double todayEMA = 0;
        double yesterdayEMA = 0;

        //从第二天开始
        for (int i = 2; i <= numberOfDays; i++) {
            int todayIndex = i - 1;

            double todayPrice = computableStock.priceAtDay(todayIndex);

            //前step i = 2-13 天,计算累加价格
            if (i < step) {
                sum += computableStock.priceAtDay(todayIndex); // i = 2-12
                yesterdayEMA = computableStock.priceAtDay(todayIndex - 1);
            } else if (i == step) { // i =  14
                yesterdayEMA = sum / step;

                //从第step+1天开始可以计算真正的EMA指标
            } else {
                //保存结果给明天使用
                yesterdayEMA = todayEMA;
            }

            //根据今日价格,K,昨天的EMA计算今天的EMA
            todayEMA = todayPrice * k + yesterdayEMA * (1 - k);

            //加入结果
            String todayDate = computableStock.dateString(todayIndex);
            result.put(todayDate, todayEMA);
        }
        return result;
    }

    @Override
    public ARBResult calculateARBR(ComputableStock computableStock, int step) throws BadInputException {

        Map<String, Double> ar = new HashMap<>();
        Map<String, Double> br = new HashMap<>();

        int numberOfDays = computableStock.numberOfDays();

        if (numberOfDays <= step + 10)
            throw new BadInputException("数据包所含天数过少,ARBR结果无意义");

        //从第一个可以计算出结果的日期开始
        for (int i = step + 1; i <= numberOfDays; i++) {
            double openSum = 0;
            double closeSum = 0;
            double highSum = 0;
            double lowSum = 0;
            double yesterDayCloseSum;

            //累加过去step天的数据
            for (int j = 0; j < step; j++) {
                List<Double> priceList = computableStock.pricelistAtDay(i - j - 1);

                openSum += priceList.get(0);
                closeSum += priceList.get(1);
                highSum += priceList.get(2);
                lowSum += priceList.get(3);
            }
            //昨日收盘价之和 = 今日收盘价之和-今天收盘价+第一天收盘价
            yesterDayCloseSum = closeSum - computableStock.priceAtDay(i-1)
                    + computableStock.priceAtDay(i-step-1);

            double arValue = (highSum - openSum) / (openSum - lowSum) * 100;
            double brValue = (highSum - yesterDayCloseSum) / (yesterDayCloseSum - lowSum) * 100;

            //加入结果
            String todayDate = computableStock.dateString(i-1);
            ar.put(todayDate, arValue);
            br.put(todayDate, brValue);
        }

        return new ARBResult(ar,br);

    }
}
