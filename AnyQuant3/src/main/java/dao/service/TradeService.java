package dao.service;

import dao.entity.TradeDao;
import util.exception.NotFoundException;

import java.util.HashMap;
import java.util.List;

/**
 * Created by JiachenWang on 2016/6/6.
 */
public interface TradeService {

    /**
     *  获得分时图数据
     * @param num 股票编号
     * @param date 日期
     * @return
     * @throws NotFoundException
     */
    List<TradeDao> getTrade(String num, String date) throws NotFoundException;

    /**
     *  获得饼图信息（时间段内不同交易类型的交易量）
     * @param number 股票编号
     * @param start 开始日期
     * @param end 结束日期
     * @return
     */
    HashMap<String, Double> getPieVolumeInfo(String number, String start, String end) throws NotFoundException ;

    /**
     *  获得饼图信息（时间段内不同交易类型的交易金额）
     * @param number 股票编号
     * @param start 开始日期
     * @param end 结束日期
     * @return
     */
    HashMap<String, Double> getPieAmountInfo(String number, String start, String end) throws NotFoundException ;

    /**
     * 获取分时图最近一天日期
     *
     * @return
     */
    String getTradeDate(String stock_num);
}
