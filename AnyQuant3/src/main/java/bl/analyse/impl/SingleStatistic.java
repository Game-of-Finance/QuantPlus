package bl.analyse.impl;

import bl.service.StockService;
import dao.entity.Variance;
import data.dataservice.AnalysisDataService;
import data.dataservice.StockDataService;
import model.stock.StockAttribute;
import model.stock.StockVO;
import util.constant.SomeConstant;
import util.enums.AttributeEnum;
import util.exception.BadInputException;
import util.exception.NotFoundException;
import util.math.CalHelper;
import util.math.CorrelationCoefficient;
import util.math.NumberFormater;
import util.math.sort.Node;
import util.time.TimeConvert;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

/**
 * Created by JiachenWang on 2016/5/26.
 */
public class SingleStatistic {

    private StockService stockService;
    private StockDataService stockDataService;
    private AnalysisDataService analysisDataService;

    public SingleStatistic(StockService stockService, StockDataService stockDataService, AnalysisDataService analysisDataService) {
        this.stockService = stockService;
        this.stockDataService = stockDataService;
        this.analysisDataService = analysisDataService;
    }

    /**
     *
     * @param stock
     * @return
     */
    public double getVarianceOfPrice(StockVO stock) {
        double avg_price = this.getAvgPrice(stock);
        if (avg_price == -1)
            return -1;
        double variance = 0;
        for (StockAttribute tmp : stock.getAttributes()) {
            double day_avg = Double.parseDouble(tmp.getAttribute(SomeConstant.field.open)) + Double.parseDouble(tmp.getAttribute(SomeConstant.field.close));
            day_avg = day_avg / 2;
            variance += Math.pow((day_avg - avg_price), 2);
        }
        variance = variance / stock.getAttributes().size();
        return variance;
    }

    public double getAvgPrice(StockVO stock) {
        if (stock.getAttributes().size() == 0)
            return -1;
        double total = 0;
        for (StockAttribute tmp : stock.getAttributes()) {
            double day_avg = Double.parseDouble(tmp.getAttribute(SomeConstant.field.open)) + Double.parseDouble(tmp.getAttribute(SomeConstant.field.close));
            day_avg = day_avg / 2;
            total += day_avg;
        }

        return total / stock.getAttributes().size();
    }

    public double getVariancePosition(String time,String stock_num) throws NotFoundException {
        List<String> list = analysisDataService.getAllVariance(time);
        double target = NumberFormater.string2Double(analysisDataService.getVariance(time, stock_num));

        double count = 0.0;
        for (String tmp : list) {
            if (target <= NumberFormater.string2Double(tmp))
                count = count + 1.0;
        }

        return 100.0 * count / (list.size() + 0.0);
    }

    /**
     * 求某时间段所有股票日价格方差集合
     *
     * @return list
     */
    public List<Variance> calAllVarianceOfPrice(String startDate, String endDate) throws BadInputException {
        String field = AttributeEnum.OPEN.getEN() + "-" + AttributeEnum.CLOSE.getEN();
        List<Variance> list = new ArrayList<Variance>();
        HashMap<String, String> map = stockDataService.getStockNameAndNumber();

        double value = -1;

        int ptr = 1;
        //遍历获得链表
        for (String stock_name : map.keySet()) {

            StockVO stock = null;
            String stock_num = map.get(stock_name);
            System.out.println("Process    " + ptr++);
            try {
                stock = stockService.getStock(stock_num, startDate, endDate, field, new ArrayList<>());
            } catch (BadInputException e) {
                throw new BadInputException("传入参数有误");
            } catch (NotFoundException e) {
                continue;
            }
            value = this.getVarianceOfPrice(stock);
            list.add(new Variance(startDate.substring(0, 7), stock_num, value + ""));
        }

        return list;
    }

    /**
     * 计算近90天两只股票的相关系数
     *
     * @param stockname1
     * @param stockname2
     * @return
     * @throws NotFoundException
     * @throws BadInputException
     */
    public String cal90CC(String stockname1, String stockname2) throws NotFoundException, BadInputException, IOException {

        //获得起止时间
        Calendar endDate = Calendar.getInstance();
        String end = TimeConvert.getDisplayDate(endDate);
        endDate.add(Calendar.MONTH, -3);
        String start = TimeConvert.getDisplayDate(endDate);

        StockVO stockVO1 = stockService.getStock(stockname1, start, end, SomeConstant.field.close, new ArrayList<>());
        StockVO stockVO2 = stockService.getStock(stockname2, start, end, SomeConstant.field.close, new ArrayList<>());

        //存放两只股票每天的涨跌幅
        double[] profit1 = new double[stockVO1.getAttributes().size()];
        double[] profit2 = new double[stockVO1.getAttributes().size()];
        for (int i = 1; i < stockVO1.getAttributes().size(); i++) {
            if (stockVO2.getAttributes().get(i) != null) {
                //计算第一只股票每天的涨跌幅
                double close11 = Double.valueOf(stockVO1.getAttributes().get(i - 1).getAttribute(SomeConstant.field.close));
                double close12 = Double.valueOf(stockVO1.getAttributes().get(i).getAttribute(SomeConstant.field.close));
                profit1[i] = (close12 - close11) / close11 * 100;

                //计算第二只股票每天的涨跌幅
                double close21 = Double.valueOf(stockVO2.getAttributes().get(i - 1).getAttribute(SomeConstant.field.close));
                double close22 = Double.valueOf(stockVO2.getAttributes().get(i).getAttribute(SomeConstant.field.close));
                profit2[i] = (close21 - close22) / close21 * 100;

            }
        }
        double p = CorrelationCoefficient.calculateCC(profit1, profit2);
        BigDecimal b = new BigDecimal(p);
        double f = b.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue();
//        System.out.println(f);
        return String.valueOf(f);
    }

}
