package data.dataservice;

import po.TradeInfoPO;
import util.exception.NotFoundException;

import java.util.HashMap;
import java.util.List;

/**
 * Created by JiachenWang on 2016/6/6.
 */
public interface AnalysisDataService {

    /**
     * 返回指定股票代码的一个工作日的详细交易情况
     * @param number 股票编号
     * @param time 日期
     * @return 一个工作日的详细交易情况
     * @throws NotFoundException
     */
    TradeInfoPO getTradeInfo(String number, String time) throws NotFoundException;

    /**
     *  获得饼图信息（时间段内不同交易类型的交易量）
     * @param number 股票编号
     * @param start 开始日期
     * @param end 结束日期
     * @return
     */
    HashMap<String, Double> getVolumeInfo(String number, String start, String end) throws NotFoundException;

    /**
     *  获得饼图信息（时间段内不同交易类型的交易金额）
     * @param number 股票编号
     * @param start 开始日期
     * @param end 结束日期
     * @return
     */
    HashMap<String, Double> getAmountInfo(String number, String start, String end) throws NotFoundException;

    /**
     * 获取某个月的总体方差情况
     * @return
     */
    List<String> getAllVariance(String time) throws NotFoundException;

    /**
     * 获取某个月的某股票方差情况
     * @return
     */
    String getVariance(String time, String stock_num) throws NotFoundException;

    /**
     * 获取分时图最近一天日期
     *
     * @return
     */
    String getTradeDate(String stock_num);
}
