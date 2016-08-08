package model.common;

import util.constant.StockConstant;
import util.time.DateCount;

import java.util.HashMap;
import java.util.List;

/**
 * Created by kylin on 16/3/20.
 */
public class StockPriceInfo {

    /**
     * 瞬时价格
     */
    private HashMap<String, Double> timeAndPrice;

    /**
     * 瞬时交易手(交易额)
     */
    private HashMap<String, Double> timeAndVolume;

    /**
     * 瞬时交易金额
     */
    private HashMap<String, Double> timeAndAmount;

    /**
     * 积累到指定时间的价格
     */
    private HashMap<String, Double> timeAndAccumlatePrice;

    private int size;

    /**
     * 起点时间
     */
    private String startTime = "09:30:00";

    /**
     * 终点时间
     */
    private String endTime = "15:00:00";

    /**
     * 今日最高价
     */
    private double highest;

    /**
     * 今日最低价
     */
    private double lowest;

    /**
     * 今日开盘价
     */
    private double todayOpen;

    /**
     * 今日收盘价
     */
    private double todayClose;

    /**
     * 今日成交量
     */
    private double volume;

    /**
     * 今日成交额
     */
    private double amount;


    public StockPriceInfo(List<String> times, List<Double> prices,
                          List<Double> volumes, List<Double> amounts) {
        highest = -1;
        lowest = 9999;
        timeAndPrice = new HashMap<>();
        timeAndVolume = new HashMap<>();
        timeAndAmount = new HashMap<>();
        timeAndAccumlatePrice = new HashMap<>();

        for (int i = 0; i < times.size(); i++) {
            double price = prices.get(i);
            //统计最高价与最低价
            if (price > highest)
                highest = price;
            if (price < lowest)
                lowest = price;
            //添加即时价格
            String thisTime = times.get(i);
            timeAndPrice.put(thisTime, price);

            //添加即时交易手数
            double thisVolume = volumes.get(i);
            timeAndVolume.put(thisTime, thisVolume);

            //添加即时交易金额
            double thisAmount = amounts.get(i);
            timeAndAmount.put(thisTime, thisAmount);
        }
        size = this.timeAndPrice.size();

        //计算累计到当前时间的价格
        this.caculateAccuPrice();

        this.todayOpen = prices.get(0);
        this.todayClose = prices.get(prices.size()-1);

    }

    private void caculateAccuPrice() {
        //累计的交易金额
        double accumulateAmount = 0;

        //累计的交易量
        double accumulateVolume = 0;

        String time1 = StockConstant.OPEN_TIME;
        String time2 = StockConstant.PAUSE_TIME;
        String time3 = StockConstant.RESUME_TIME;
        String time4 = StockConstant.CLOSE_TIME;

        //计算累计价格  0,1,2,3
        String times[] = {time1,time2,time3,time4};

        for (int i = 0; i <= 1; i++) {
            int j = i * 2;
            List<String> timesBeforeNoon = DateCount.getSeconds(times[j], times[j+1], 1);
            for (String time : timesBeforeNoon) {
                if (timeGotInfo(time)) {
                    //数据累计
                    accumulateAmount += this.timeAndAmount.get(time);
                    accumulateVolume += this.timeAndVolume.get(time) * 100;

                    double accuPrice = accumulateAmount / accumulateVolume;
                    this.timeAndAccumlatePrice.put(time, accuPrice);
                }
            }
        }

        this.volume = accumulateAmount;
        this.amount = accumulateVolume;
    }

    /**
     * 判断一个时间点是否有数据
     *
     * @return
     */
    public boolean timeGotInfo(String time) {
        return this.timeAndPrice.containsKey(time);
    }

    public HashMap<String, Double> getTimeAndPrice() {
        return timeAndPrice;
    }

    public HashMap<String, Double> getTimeAndAccumlatePrice() {
        return this.timeAndAccumlatePrice;
    }

    public double getPriceBySeconds(String time) {
        if (this.timeGotInfo(time)) {
            return this.timeAndPrice.get(time);
        } else
            return Double.NaN;
    }

    public int getSize() {
        return size;
    }


    public double getHighest() {
        return highest;
    }

    public double getLowest() {
        return lowest;
    }

    public double getTodayOpen() {
        return todayOpen;
    }

    public double getTodayClose() {
        return todayClose;
    }

    public double getVolume() {
        return volume;
    }

    public double getAmount() {
        return amount;
    }

    public void setTodayOpen(double todayOpen) {
        this.todayOpen = todayOpen;
    }

    public void setTodayClose(double todayClose) {
        this.todayClose = todayClose;
    }

    public HashMap<String, Double> getTimeAndAmount() {
        return timeAndAmount;
    }

    public HashMap<String, Double> getTimeAndVolume() {
        return timeAndVolume;
    }
}
