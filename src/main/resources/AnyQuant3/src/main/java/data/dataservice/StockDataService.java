package data.dataservice;

import model.stock.OneDayInfo;
import po.StockPO;
import po.TradeInfoPO;
import util.exception.NotFoundException;

import java.util.HashMap;
import java.util.List;

/**
 * Created by kylin on 16/3/7.
 */
public interface StockDataService {

	/**
	 * 返回数据库中股票编号和名称
	 *
     * 名字在前,编号在后
     *
	 * @return
	 */
    HashMap<String,String> getStockNameAndNumber();

    /**
     * 根据股票的代码得到中文名字
     *
     * @param number 代码
     * @return 名字
     */
    String getNameByID(String number) throws NotFoundException;

    /**
     * 根据中文名字搜索符合的股票代码
     *
     * @param name 中文名字
     * @return 所有包含关键字的股票代码
     */
    List<String> getIDLikeName(String name) throws NotFoundException;


    /**
     * 返回指定股票代码的股票所有交易数据
     *
     * @param num 指定股票代码,如"sh600000"
     * @return 指定股票代码的所有股票交易数据
     */
    StockPO getStock(String num) throws NotFoundException;

    /**
     * 返回行业
     *
     * 一个行业里面是
     * 名字在前,编号在后
     *
     * @return
     */
    HashMap<String, HashMap<String, String>> getNamesAndNames();

    /**
     * 获取最近一天所有股票的数据
     *
     * @return
     */
    List<OneDayInfo> getLatest();

}
