package dao.service;

import dao.entity.BenchmarkAttribute;
import dao.entity.StockAttribute;
import dao.entity.TradeDao;
import util.exception.NotFoundException;

import java.util.HashMap;
import java.util.List;

/**
 * Created by JiachenWang on 2016/5/12.
 */
public interface StockReadService {
    /**
     * 根据股票的代码得到中文名字
     *
     * @param number 代码
     * @return 名字
     */
    String getNameByID(String number) throws NotFoundException ;

    /**
     * 根据中文名字搜索符合的股票代码
     *
     * @param name 中文名字
     * @return 所有包含关键字的股票代码
     */
    List<String> getIDLikeName(String name) throws NotFoundException ;

    /**
     * 返回数据库中股票编号和名称
     *
     * @return
     */
    HashMap<String, String> getStockNumAndName();

    /**
     * 返回行业
     * 股票编号,股票名字
     *
     * @return
     */
    HashMap<String, HashMap<String, String>> getNamesAndNames();

    /**
     * 返回指定股票代码的股票所有交易数据
     *
     * @param num 指定股票代码,如"sh600000"
     * @return 属性集合
     */
    List<StockAttribute> getStock(String num) throws NotFoundException;

    /**
     * 获取所有可用的benchmark，大盘指数
     *
     * @return
     */
    List<String> getBenchmarkList();

    /**
     * 获取所有可用的benchmark，大盘指数
     *
     * @return
     */
    HashMap<String, String> getAllBenchmark();

    /**
     * 获取指定大盘指数的数据
     *
     * @param bench 大盘指数编号
     * @return 指定大盘指数的属性集合
     */
    List<BenchmarkAttribute> getBenchmark(String bench) throws NotFoundException;

    /**
     * 获取最近一天所有股票的数据
     *
     * @return
     */
    List<StockAttribute> getLastest();

    /**
     * 获取最近一天之前一个工作日每只股票的收盘价
     * 前：股票编号
     * 后：收盘价
     *@param lastest_date 最近一个工作日
     * @return
     */
    HashMap<String, String> getCloseBeforeLastest(String lastest_date);
}
