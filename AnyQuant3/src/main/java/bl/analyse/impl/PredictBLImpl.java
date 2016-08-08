package bl.analyse.impl;

import bl.analyse.service.PredictBLService;
import bl.analyse.service.TechnicalAnalysisStrategy;
import bl.service.StockService;
import data.factory.DataFactory;
import model.analyse.ARBResult;
import model.analyse.MACDResult;
import model.stock.StockVO;
import util.constant.SomeConstant;
import util.constant.StockConstant;
import util.enums.AttributeEnum;
import util.enums.IndustryPeriodEnum;
import util.exception.BadInputException;
import util.exception.NotFoundException;
import util.math.LinearRegression;
import util.math.NumberFormater;
import util.math.arima.ARIMAPredict;
import util.math.season.SeasonPredict;
import util.math.sort.MyHashItem;
import util.math.sort.MySort;
import util.time.DateCount;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by JiachenWang on 2016/5/24.
 */
public class PredictBLImpl implements PredictBLService {

    private SingleStatistic singleStatistic;
    private MultiStatistic multiStatistic;

    private StockService stockService;

    private TechnicalAnalysisStrategy strategy;

    public PredictBLImpl(StockService stockService, TechnicalAnalysisStrategy strategy) throws NotFoundException {
        this.stockService = stockService;
        this.strategy = strategy;
        this.singleStatistic = new SingleStatistic(stockService, DataFactory.getInstance().getStockDataService(), DataFactory.getInstance().getAnalysisDataService());
        this.multiStatistic = new MultiStatistic(stockService, strategy);
    }

    @Override
    public String multiAnlyse(String stock_num) throws BadInputException, NotFoundException {
        double multi = multiStatistic.multiAnlyse(stock_num);

        StringBuilder result = new StringBuilder();
        result.append("通过统计分析预测，");

        //单股涨幅预测
        if (multi==0)
            result.append("该股票走势平稳，建议观望。");
        else if (multi>0 && multi<=2)
            result.append("该股票行情将略有上涨，建议买入股票。");
        else if (multi>2)
            result.append("该股票很有可能进入高价区，建议买入！");
        else if (multi<0 && multi>=-2)
            result.append("该股票行情将略有下降，建议卖出股票。");
        else if (multi<=-2)
            result.append("该股票很有可能进入低价区，建议卖出，趁高结利！");

        //单股稳定性预测
        result.append("另外，");
        result.append(this.analyseVariance(stock_num));

        //单股季节预测
        result.append("最后，");
        result.append(this.analyseSeasonPrice(stock_num));
        result.append(this.analyseSeasonVolume(stock_num));

        return result.toString();
    }

    @Override
    public String analyseMACD(String stock_num) throws BadInputException, NotFoundException {

        StockVO stock = this.stockService.getLatestStock(
                stock_num, 150, SomeConstant.field.all, new ArrayList<>());

        MACDResult macdResult = strategy.calculateMACD(stock);
        List<MyHashItem> list = MySort.sortHashmapByKey(macdResult.getMacd());
        double[] arg1 = new double[list.size()];
        double[] arg2 = new double[list.size()];
        for (int i = 0; i < list.size(); i++) {
            arg1[i] = i + 1;
            arg2[i] = (double) list.get(i).getValue();
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

        if (macd_avg * dif_avg <= 0)
            return "";

        StringBuilder result = new StringBuilder();
        result.append("结合150天有效数据，从MACD指数来看，");
        if (macd_avg > 0 && gradient > 0)
            result.append("该股票行情处于多头行情中，可以买入开仓或多头持仓。");
        else if (macd_avg < 0 && gradient < 0)
            result.append("该股票行情处于空头行情中，可以卖出开仓或观望。");
        else if (macd_avg > 0 && gradient < 0)
            result.append("该股票行情处于下跌阶段，可以卖出开仓和观望。");
        else if (macd_avg < 0 && gradient > 0)
            result.append("该股票行情即将上涨，可以买入开仓或多头持仓。");
        else if (gradient == 0)
            result.append("该股票行情走势稳定。");

        return result.toString();
    }

    public String analyseVariance(String stock_num) throws BadInputException, NotFoundException {
        //上个月最后一天
        String date = DateCount.dateToStr(new Date());
        StockVO stock = null;
        try {
            date = DateCount.getFirstDayOfMonth(date);
            date = DateCount.count(date, -1);
            stock = this.stockService.getStock(
                    stock_num, DateCount.getFirstDayOfMonth(date), date, SomeConstant.field.all, new ArrayList<>());
        } catch (ParseException e) {
            e.printStackTrace();
        }

        //该股票的上个月股价方差
        double variance = singleStatistic.getVarianceOfPrice(stock);

        //和所有股票比较
        double position = singleStatistic.getVariancePosition(date.substring(0 ,7), stock_num);

        StringBuilder result = new StringBuilder();
        result.append("依据上个月的数据，");
        if (position >= 75.0)
            result.append("从稳定程度看，该股票特别稳定");
        else if (position >= 50.0 && position < 75.0)
            result.append("从稳定程度看，该股票具有一定的稳定性");
        else if (position >= 25.0 && position < 50.0)
            result.append("从稳定程度看，该股票不是特别稳定");
        else if (position < 25.0)
            result.append("从稳定程度看，该股票波动很大，具有一定的风险性");

        result.append("，稳定程度超过系统中" + NumberFormater.formatDouble(position) + "%的股票。");
        return result.toString();
    }

    @Override
    public String getVarianceValue(String stock_num) throws BadInputException, NotFoundException {
        //上个月最后一天
        String date = DateCount.dateToStr(new Date());
        StockVO stock = null;
        try {
            date = DateCount.getFirstDayOfMonth(date);
            date = DateCount.count(date, -1);
            stock = this.stockService.getStock(
                    stock_num, DateCount.getFirstDayOfMonth(date), date, SomeConstant.field.all, new ArrayList<>());
        } catch (ParseException e) {
            e.printStackTrace();
        }

        //该股票的上个月股价方差
        double variance = singleStatistic.getVarianceOfPrice(stock);

        //和所有股票比较
        double position = singleStatistic.getVariancePosition(date.substring(0 ,7), stock_num);

        return NumberFormater.formatDouble(position) + "%";
    }


    public String analyseRSI(String number) throws NotFoundException, BadInputException {
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

        StringBuilder result = new StringBuilder();
        result.append("从该股最近几个交易日的RSI数值来看,14日RSI");
        if (ave14 >= 70) {
            result.append("高居70以上,代表该证券已被超买,投资者应考虑出售该证券.");
            //当快速RSI由上而下跌破慢速RSI时，为卖出时机。
            if (ave6 < ave24) {
                result.append("并且短期RSI在长期之下,为卖出时机.");
            }
        } else if (ave14 <= 30) {
            result.append("跌至30以下,代表证券被超卖,投资者应购入该证券.");
            //当快速RSI由下往上突破慢速RSI时，为买进时机;
            if (ave6 > ave24) {
                result.append("并且短期RSI在长期之上,着实为极佳买进时机.");
            }

        } else {
            result.append("在50左右徘徊,无明显买卖信号.");
        }

        return result.toString();
    }

    @Override
    public String analyseArbr(String stock_num) throws BadInputException, NotFoundException {
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

        StringBuilder result = new StringBuilder();
        result.append("根据当前AR指数，");
        if (ar <= 50)
            result.append("股价已严重超卖，股价随时可能反弹，可逢低买入。");
        else if (ar >= 80 && ar <= 120)
            result.append("盘整行情，股价走势平稳，出现大幅涨跌的概率比较低。");
        else if (ar >= 150)
            result.append("股价已进入高价区，随时可能大幅回落下跌，应及时卖出股票。");

        result.append("根据ARBR曲线走势，");
        if (ar_b >= 0 && br_b >= 0 && ar < 150)
            result.append("该股票的人气不断提升，投资者可以考虑及时买入。");
        else if (ar_b >= 0 && br_b >= 0 && ar >= 150)
            result.append("股价已经达到高位，持股者应注意及时获利了结。");
        else if (ar > 80 && ar < 120 && br_b < 0)
            result.append("建议股民逢低买入。");
        else if (ar_b < 0 && br_b >= 0)
            result.append("建议股民逢高出货。");
        else
            result.append("无法得出合理有效结论");

        return result.toString();
    }

    @Override
    public String analyseArima(String stock_num) throws BadInputException, NotFoundException {
        StockVO stock = stockService.getLatestStock(stock_num, 15, AttributeEnum.OPEN.getEN() + "-" + AttributeEnum.CLOSE.getEN(), null);

        double predict = ARIMAPredict.getOneDayPredict(stock.getPriceLine());
        return "通过Arima模型预测（15日数据），下一个工作日股票预期价格为" + NumberFormater.formatDouble(predict) + "。";
    }

    @Override
    public String analyseSeasonPrice(String stock_num) throws BadInputException, NotFoundException {
        SeasonPredict predict = new SeasonPredict(stockService);

        String year = IndustryPeriodEnum.getNextPeriod().substring(0, 4);
        int season_index = Integer.parseInt(IndustryPeriodEnum.getNextPeriod().substring(5));

        double avgPrice = predict.avgPricePredict(stock_num, year, season_index);

        String result = "根据季节波动分析的时间序列模型预测，" + year + "年第" + season_index + "季度，" +
                "该股票的平均价格预计为" + NumberFormater.formatDouble(avgPrice) +  "。";
        return result;
    }

    @Override
    public String analyseSeasonVolume(String stock_num) throws BadInputException, NotFoundException {
        SeasonPredict predict = new SeasonPredict(stockService);

        String year = IndustryPeriodEnum.getNextPeriod().substring(0, 4);
        int season_index = Integer.parseInt(IndustryPeriodEnum.getNextPeriod().substring(5));

        double volume = predict.volumnPredict(stock_num, year, season_index);

        String result = "根据季节波动分析的时间序列模型预测，" + year + "年第" + season_index + "季度，" +
                "每工作日平均成交量预计为" + NumberFormater.formatInteger(volume) + "百万手。";
        return result;
    }

    @Override
    public String getSeasonPriceValue(String stock_num) throws BadInputException, NotFoundException {
        SeasonPredict predict = new SeasonPredict(stockService);

        String year = IndustryPeriodEnum.getNextPeriod().substring(0, 4);
        int season_index = Integer.parseInt(IndustryPeriodEnum.getNextPeriod().substring(5));

        double avgPrice = predict.avgPricePredict(stock_num, year, season_index);

        return NumberFormater.formatDouble(avgPrice) + "元";
    }

    @Override
    public String getSeasonVolumeValue(String stock_num) throws BadInputException, NotFoundException {
        SeasonPredict predict = new SeasonPredict(stockService);

        String year = IndustryPeriodEnum.getNextPeriod().substring(0, 4);
        int season_index = Integer.parseInt(IndustryPeriodEnum.getNextPeriod().substring(5));

        double volume = predict.volumnPredict(stock_num, year, season_index);

        return NumberFormater.formatInteger(volume) + "百万手";
    }

    @Override
    public String analyseEMA(String stock_num) throws BadInputException, NotFoundException {
        String result = "从EMA(指数平滑移动平均线)这一趋向类指标来看,";
        //获取最近几十天的数据
        StockVO stockVO = stockService.getLatestStock(stock_num, 100, StockConstant.AllFields, null);
        Map<String, Double> ema12 = this.strategy.calculateEMA(stockVO,12);
        Map<String, Double> ema50 = this.strategy.calculateEMA(stockVO,50);

        List<MyHashItem> e12 = MySort.sortHashmapByKey(ema12);
        List<MyHashItem> e50 = MySort.sortHashmapByKey(ema50);

        double latest12 = (double) e12.get(e12.size()-1).getValue();
        double lates50 = (double) e50.get(e12.size()-1).getValue();
        String date = (String) e12.get(e12.size()-1).getKey();
        double latestPrice = stockVO.priceAtDay(date);

        if(lates50 < latest12 && latest12 < latestPrice){
            result += "股价在短期EMA线和长期EMA数线上方运行,这两条线将对价格走势形成支撑,股价短期内上涨趋势良好";
        }else if(lates50 > latest12 && latest12 > latestPrice){
            result += "股价处于短期EMA线和长期EMA数线下方运行，此时这两条线将对价格走势形成压力,股价短期内很难涨。";
        }else {
            result += "股价在短期EMA线和长期EMA数线之间运行,无明显波动趋势";
        }
        return result;
    }

}
