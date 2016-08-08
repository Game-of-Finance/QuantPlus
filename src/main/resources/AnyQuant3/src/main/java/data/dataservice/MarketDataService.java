package data.dataservice;

import po.StockPO;
import util.exception.NotFoundException;

import java.util.HashMap;

/**
 * Created by kylin on 16/6/1.
 * All rights reserved.
 */
public interface MarketDataService {

    /**
     * 返回数据库中大盘名称和编号
     *
     * @return 名称 + 编号的map
     */
    HashMap<String,String> getAllBenchmark();

    /**
     * 获取指定大盘指数的数据
     *
     * @param bench 大盘指数编号
     * @return 指定大盘指数的所有数据
     */
    StockPO getBenchmark(String bench) throws NotFoundException;


}
