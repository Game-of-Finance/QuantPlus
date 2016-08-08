package model.stock;

import model.analyse.ComputableStock;
import po.StockPO;
import util.exception.BadInputException;
import util.exception.NotFoundException;
import util.time.DateCount;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * Created by kylin on 16/3/4. Modified by seven on 16/3/5
 */
public class StockVO implements ComputableStock, Comparable<StockVO> {
    /**
     * 股票编号
     */
    private String number;

    /**
     * 股票名称
     */
    private String name;

    /**
     * 数据的起始日期
     */
    private String startDate;

    private String endDate;

    /**
     * 股票属性 (日期 --> (指标名称,指标数据))
     */
    private List<StockAttribute> attributes;

    /**
     * 股票属性是否按照日期排过序
     */
    private boolean sorted;

    private int numOfDays;

    /**
     * 根据PO构造
     *
     * @param po
     * @param beginDate
     * @param endDate
     */
    public StockVO(StockPO po, String beginDate, String endDate) {
        List<StockAttribute> atts = new ArrayList<>();
        HashMap<String, HashMap<String, String>> info = po.getInfomation();

        // 获得筛选的日期取出对应的信息
        assert (beginDate.compareTo(endDate) <= 0);
        List<String> days = DateCount.splitDays(beginDate, endDate);

        //对于每一天
        for (String day : days) {
            // 这一天没有数据
            if (!info.containsKey(day)) {
                continue;
            }
            // 得到有数据的一天
            HashMap<String, String> oneDay = info.get(day);
            HashMap<String, String> temp = new HashMap<>();

            // 对于所有的属性
            for (Map.Entry<String, String> oneAttr : oneDay.entrySet()) {
                String key = oneAttr.getKey();
                String value = oneAttr.getValue();
                double d = Double.parseDouble(value);
                DecimalFormat df;
                if (key.equals("volume")) {
                    df = new DecimalFormat("0");
                    //成交量的单位是 万手
                    d = d / 10000;
                } else if (key.equals("amount")) {
                    //成交金额的单位是 百万元
                    df = new DecimalFormat("0");
                    d = d / 1000000;
                } else {
                    df = new DecimalFormat("0.00");
                }
                temp.put(key, df.format(d));
            }
            StockAttribute formattedAttr = new StockAttribute(day, temp);
            atts.add(formattedAttr);
        }
        this.startDate = beginDate;
        this.endDate = endDate;

        this.number = po.getNumber();
        this.name = po.getName();
        this.attributes = atts;
        this.numOfDays = attributes.size();
        this.sortAttr();
    }

    public String getNumber() {
        return number;
    }

    public String getName() {
        return name;
    }

    public List<StockAttribute> getAttributes() {
        return attributes;
    }

    public List<StockAttribute> getAttributes(String start, String end) throws BadInputException {
        if (start.compareTo(this.startDate) < 0 || end.compareTo(this.endDate) > 0) {
            throw new BadInputException("日期返回超出VO内部范围");
        }

        List<StockAttribute> list = new ArrayList<>();

        for (int i = 0; i < attributes.size(); i++) {
            StockAttribute attribute = this.attributes.get(i);
            String day = attribute.getDate();
            if (day.compareTo(start) >= 0 && day.compareTo(end) <= 0) {
                list.add(attribute);
            }
        }
        return list;
    }

    @Override
    public int numberOfDays() {
        return this.attributes.size();
    }

    @Override
    public double priceAtDay(int dayIndex) {
        return Double.parseDouble(this.attributes.get(dayIndex).getAttribute().get("close"));
    }

    public double priceAtDay(String day) throws NotFoundException {
        for (StockAttribute oneDay : this.attributes) {
            if (oneDay.getDate().equals(day)) {
                return oneDay.getClose();
            }
        }
        throw new NotFoundException("此数据包不包含输入的日期");
    }


    @Override
    public List<Double> pricelistAtDay(int dayIndex) {
        this.sortAttr();
        double open = Double.parseDouble(this.attributes.get(dayIndex).getAttribute().get("open"));
        double close = Double.parseDouble(this.attributes.get(dayIndex).getAttribute().get("close"));
        double high = Double.parseDouble(this.attributes.get(dayIndex).getAttribute().get("high"));
        double low = Double.parseDouble(this.attributes.get(dayIndex).getAttribute().get("low"));
        List<Double> result = new ArrayList<>();
        result.add(open);
        result.add(close);
        result.add(high);
        result.add(low);
        return result;
    }

    @Override
    public double changeAtDay(int dayIndex) {
        this.sortAttr();
        String strClose = this.attributes.get(dayIndex).getAttribute().get("close");
        String strOpen = this.attributes.get(dayIndex).getAttribute().get("open");
        double close = Double.parseDouble(strClose);
        double open = Double.parseDouble(strOpen);
        return close - open;
    }

    /**
     * 判断某一天是否比昨天价格涨了
     *
     * @param dayIndex
     * @return
     */
    public boolean riseAtDay(int dayIndex) {
        this.sortAttr();
        //今天昨天的收盘价格
        String strClose = this.attributes.get(dayIndex).getAttribute().get("close");
        String strOpen = this.attributes.get(dayIndex - 1).getAttribute().get("close");
        double close = Double.parseDouble(strClose);
        double open = Double.parseDouble(strOpen);
        return close > open;
    }

    @Override
    public String dateString(int dayIndex) {
        this.sortAttr();
        return this.attributes.get(dayIndex).getDate();
    }

    //根据日期对属性进行排序
    private void sortAttr() {
        if (!this.sorted) {
            this.attributes.sort((at1, at2) ->
                    at1.getDate().compareTo(at2.getDate()));
            this.sorted = true;
        }
    }

    public void setAttributes(List<StockAttribute> attributes) {
        this.attributes = attributes;
    }

    public String getStartDate() {
        return startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    /**
     * 返回VO包所包含的 最后一天的数据
     *
     * @return 最后一个有数据的ATTR
     */
    public StockAttribute getLastAttr() throws NotFoundException {
        if (this.attributes.size() == 0) {
            throw new NotFoundException("此VO数据包没有任何数据,简直GG");
        }
        return this.attributes.get(this.attributes.size() - 1);
    }

    public AverageInfo calculateAverage() {
        double avePrice = 0;
        double averagePb = 0;
        double totoalV = 0;
        double totoalAmount = 0;

        for (StockAttribute attribute : this.attributes) {
            avePrice += attribute.getClose();
            averagePb += attribute.getPB();
            totoalV += attribute.getVolume();
            totoalAmount += attribute.getAmount();
        }
        assert (numOfDays != 0);
        avePrice = avePrice / numOfDays;
        averagePb = averagePb / numOfDays;

        double averageProfit = (averagePb != 0) ? (avePrice / averagePb) : 0;

        double aveChange = this.getSeasonChange();

        return new AverageInfo(avePrice, aveChange, averageProfit, totoalV, totoalAmount);
    }

    public double getSeasonChange() {
        assert (numOfDays >= 2);
        StockAttribute first = this.attributes.get(0);
        StockAttribute last = this.attributes.get(this.numOfDays - 1);
        double risePercent = 0;
        //重要!!!验证分母不为0
        if (first.getClose() != 0) {
            risePercent = (last.getClose() - first.getClose()) / first.getClose();
            //换一个分母再试试
        } else if (first.getOpen() != 0) {
            risePercent = (last.getClose() - first.getOpen()) / first.getOpen();
            //如果今天的价格是0,不是说明这股票完蛋了,只是API崩了而已
        }
        if (last.getClose() == 0) {
            risePercent = 0;
        }
        return risePercent * 100;
    }

    /**
     * 获得最后一个工作日收盘价
     *
     * @return
     */
    public double getLatestPrice() {
        return this.attributes.get(this.numOfDays - 1).getClose();
    }


    public double getLatestChange() {
        double todayClose = this.attributes.get(this.numOfDays - 1).getClose();
        double ystodayClose = this.attributes.get(this.numOfDays - 2).getClose();
        return (todayClose - ystodayClose) / ystodayClose * 100;
    }

    @Override
    public int compareTo(StockVO o) {
        double change = this.getSeasonChange() - o.getSeasonChange();
        if (change < 0) {
            return -1;
        } else if (change > 0) {
            return 1;
        } else {
            return 0;
        }
    }

    public List<Double> getPriceLine() {
        List<Double> result = new ArrayList<Double>();
        for (StockAttribute attr : attributes) {
//            System.out.println(attr.getDate());
            result.add((attr.getClose() + attr.getOpen()) / 2.0);
//            System.out.println((attr.getClose() + attr.getOpen()) / 2.0);
        }
        return result;
    }
}



