package web.dao;


import web.model.strategy.BackTest;

import java.util.Set;


/**
 * Created by xyf on 2016/8/14 0014.
 */
public interface BackTestDao {
    /**
     * 根据策略id获得该策略的所有回测集合
     * @param strategyId
     * @return
     */
    Set<BackTest> getBackTests(int strategyId);

}
