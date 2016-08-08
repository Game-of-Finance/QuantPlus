package bl.analyse.impl;

import bl.analyse.service.TechnicalAnalysisStrategy;
import bl.service.StockService;
import data.factory.DataFactory;
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
import util.time.DateCount;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by JiachenWang on 2016/6/6.
 */
public class MultiStatistic {

    private SingleStatistic statistic;

    private StockService stockService;

    private TechnicalAnalysisStrategy strategy;

    public MultiStatistic(StockService stockService, TechnicalAnalysisStrategy strategy) throws NotFoundException {
        this.stockService = stockService;
        this.strategy = strategy;
        this.statistic = new SingleStatistic(stockService, DataFactory.getInstance().getStockDataService(), DataFactory.getInstance().getAnalysisDataService());
    }

    public double multiAnlyse(String stock_num) throws BadInputException, NotFoundException {

        double total = 0.0;
        total += this.analyseMACD(stock_num);
        total += this.analyseRSI(stock_num);
        total += this.analyseArbr(stock_num);
        total += this.analyseArima(stock_num);

        total = total / 4.0;

        return total;
    }

    public double analyseMACD(String stock_num) throws BadInputException, NotFoundException {

        StockVO stock = this.stockService.getLatestStock(
                stock_num, 150, SomeConstant.field.all, new ArrayList<>());

        MACDResult macdResult = strategy.calculateMACD(stock);
        List<MyHashItem> list = MySort.sortHashmapByKey(macdResult.getMacd());
        double[] arg1 = new double[list.size()];
        double[] arg2 = new double[list.size()];
        for (int i = 0; i < list.size(); i++) {
            arg1[i] = i + 1;
            arg2[2] = (double) list.get(i).getValue();
        }
        double gradient = LinearRegression.calculateLR_b(arg1, arg2, list.size());

        double dif_avg = 0;
        for (double value : macdResult.getDif().values())
            dif_avg += value;
        dif_avg = dif_avg / macdResult.getDif().size();

        double macd_avg = 0;
        for (double value : macdResult.getMacd().values())
            macd_avg += value;
        macd_avg = macd_avg / macdResult.getMacd().size();

        //特殊情况
        if (macd_avg * dif_avg <= 0)
            return 0;

        //该股票行情行情处于多头行情中，可以买入开仓或多头持仓
        if (macd_avg > 0 && gradient > 0)
            return 3;
            //该股票行情处于空头行情中，可以卖出开仓或观望
        else if (macd_avg < 0 && gradient < 0)
            return -2;
            //该股票行情处于下跌阶段，可以卖出开仓和观望
        else if (macd_avg > 0 && gradient < 0)
            return -3;
            //该股票行情即将上涨，可以买入开仓或多头持仓
        else if (macd_avg < 0 && gradient > 0)
            return 3;
            //该股票行情走势稳定
        else if (gradient == 0)
            return 0;

        return 0;
    }

    public double analyseRSI(String number) throws NotFoundException, BadInputException {
        //获取最近几十天的数据
        StockVO stockVO = stockService.getLatestStock(number, 100, StockConstant.AllFields, null);

        //计算不同间隔的RSI数值
        Map<String, Double> rsi6 = strategy.calculateRSI(stockVO, 6);
        Map<String, Double> rsi14 = strategy.calculateRSI(stockVO, 14);
        Map<String, Double> rsi24 = strategy.calculateRSI(stockVO, 24);

        List<MyHashItem> list6 = MySort.sortHashmapByKey(rsi6);
        List<MyHashItem> list14 = MySort.sortHashmapByKey(rsi14);
        List<MyHashItem> list24 = MySort.sortHashmapByKey(rsi24);


        //计算近来几天RSI指数的均值
        int days = 5;
        double ave6 = 0;
        double ave14 = 0;
        double ave24 = 0;
        for (MyHashItem hashItem : list6) {
            ave6 += (double) hashItem.getValue();
        }
        for (MyHashItem hashItem : list14) {
            ave14 += (double) hashItem.getValue();
        }
        for (MyHashItem hashItem : list24) {
            ave24 += (double) hashItem.getValue();
        }

        ave14 = ave14 / days;
        ave6 = ave6 / days;
        ave24 = ave24 / days;

        if (ave14 >= 70) {
            //当快速RSI由上而下跌破慢速RSI时，为卖出时机。
            if (ave6 < ave24) {
                return -3;
            }
            //该证券已被超买,投资者应考虑出售该证券
            return -2;
        } else if (ave14 <= 30) {
            //当快速RSI由下往上突破慢速RSI时，为买进时机;
            if (ave6 > ave24) {
                return 3;
            }
            //证券被超卖,投资者应购入该证券
            return 2;
        } else {
            return 0;
        }

    }

    public double analyseArbr(String stock_num) throws BadInputException, NotFoundException {
        //获取最近几十天的数据
        StockVO stockVO = stockService.getLatestStock(stock_num, 100, StockConstant.AllFields, null);
        int step = 14;
        ARBResult arbr = strategy.calculateARBR(stockVO, step);

        List<MyHashItem> ar_list = MySort.sortHashmapByKey(arbr.getAr());
        List<MyHashItem> br_list = MySort.sortHashmapByKey(arbr.getAr());

        double ar = (double) ar_list.get(ar_list.size()-1).getValue();

        double[] arg1 = new double[ar_list.size()];
        double[] arg2 = new double[ar_list.size()];
        for (int j = 0; j < ar_list.size(); j++) {
            arg1[j] = j + 1;
            arg2[j] = (double) ar_list.get(j).getValue();
        }
        double ar_b = LinearRegression.calculateLR_b(arg1, arg2, ar_list.size());

        for (int j = 0; j < ar_list.size(); j++) {
            arg2[j] = (double) br_list.get(j).getValue();
        }
        double br_b = LinearRegression.calculateLR_b(arg1, arg2, ar_list.size());

        //股价已严重超卖，股价随时可能反弹，可逢低买入
        if (ar <= 50)
            return 3;
            //盘整行情，股价走势平稳，出现大幅涨跌的概率比较低
        else if (ar >= 80 && ar <= 120)
            return 0;
            //股价已进入高价区，随时可能大幅回落下跌，应及时卖出股票
        else if (ar >= 150)
            return -3;

        //该股票的人气不断提升，投资者可以考虑及时买入
        if (ar_b >= 0 && br_b >= 0 && ar < 150)
            return 3;
            //股价已经达到高位，持股者应注意及时获利了结
        else if (ar_b >= 0 && br_b >= 0 && ar >= 150)
            return -3;
            //建议股民逢低买入
        else if (ar > 80 && ar < 120 && br_b < 0)
            return 2;
            //建议股民逢高出货
        else if (ar_b < 0 && br_b >= 0)
            return -2;

        return 0;
    }

    public double analyseArima(String stock_num) throws BadInputException, NotFoundException {
        StockVO stock = stockService.getLatestStock(stock_num, 15, AttributeEnum.OPEN.getEN() + "-" + AttributeEnum.CLOSE.getEN(), null);

        double predict = ARIMAPredict.getOneDayPredict(stock.getPriceLine());

        double last = stock.getLatestPrice();
        double change = (predict - last) / last * 100.0;

        if (change == 0)
            return 0;
        else if (change > 0 && change <= 1)
            return 1;
        else if (change > 1 && change <= 2)
            return 2;
        else if (change > 2 && change <= 3)
            return 3;
        else if (change > 3)
            return 4;
        else if (change < 0 && change >= -1)
            return -1;
        else if (change < -1 && change >= -2)
            return -2;
        else if (change < -2 && change >= -3)
            return -3;
        else if (change <= 3)
            return -4;

        return 0;
    }

}
