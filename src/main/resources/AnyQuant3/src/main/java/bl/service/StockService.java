package bl.service;

import model.stock.ConditionSelect;
import model.stock.OneDayInfo;
import model.stock.StockVO;
import util.exception.BadInputException;
import util.exception.NotFoundException;

import java.util.List;

/**
 * Created by kylin on 16/3/4.
 * All rights reserved.
 */
public interface StockService {

    /**
     * 通过股票编号获得股票名称
     *
     * @param num
     * @return
     * @throws NotFoundException
     */
    String getStockName(String num) throws NotFoundException;

    /**
     * 根据名称获取编号
     *
     * @param name 中文名称
     * @return
     * @throws NotFoundException
     */
    String getStockNumber(String name) throws NotFoundException;

    /**
     * 返回指定股票代码的指定时间字段的信息
     *
     * @param num   股票代码
     * @param start  起点日期
     * @param end    终点日期
     * @param fields 股票信息字段
     * @return 股票代码的指定时间字段的信息
     */
    StockVO getStock(String num, String start, String end, String fields, List<ConditionSelect> ranges) throws NotFoundException, BadInputException;

    //获取所有字段
    StockVO getStock(String name, String start, String end) throws NotFoundException, BadInputException;

    /**
     * 返回指定股票代码的指定最近天数的字段的信息
     *
     * @param num   股票代码
     * @param numOfDays  天数
     * @param fields 股票信息字段
     * @return 股票代码的指定时间字段的信息
     */
    StockVO getLatestStock(String num, int numOfDays, String fields, List<ConditionSelect> ranges) throws NotFoundException, BadInputException;

    /**
     * 获取一个股票最近一天的数据包
     *
     * @param num 股票代码
     * @return 一天
     */
    OneDayInfo getLatestOneDay(String num) throws NotFoundException;

    /**
     * 得到有分时数据的最近工作日日期
     *
     * @return
     */
    String getLatestDate(String number);

}
