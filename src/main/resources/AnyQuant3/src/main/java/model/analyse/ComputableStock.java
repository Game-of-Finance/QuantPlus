package model.analyse;

import java.util.List;

/**
 * Created by kylin on 16/4/9.
 *
 * 可以用于计算EMA MACD等指标的抽象股票接口
 */
public interface ComputableStock {

    /**
     * @return 这个股票数据包有多少天的数据
     */
    int numberOfDays();

    /**
     * 根据日期的下标获取数据
     *
     * @param dayIndex 第几天
     * @return 这天的股价
     */
    double priceAtDay(int dayIndex);

    /**
     * 根据日期的下标获取数据(open close high low)
     *
     * @param dayIndex 第几天
     * @return 这天的股价
     */
    List<Double> pricelistAtDay(int dayIndex);

    /**
     * 获取此日期的涨跌价格(close - open)
     *
     * @param dayIndex 第几天
     * @return 涨跌价格
     */
    double changeAtDay(int dayIndex);

    /**
     * 这个数据包的日期下标应该是按照日期的顺序排好序的
     * 例如 0 对应第一天,numberOfDays-1 对应最后一天
     *
     * @param dayIndex 第几天
     * @return 日期字符串
     */
    String dateString(int dayIndex);

}
