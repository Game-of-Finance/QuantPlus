package web.biz;

import web.model.strategy.Strategy;

import java.util.List;

/**
 * Created by xyf on 2016/8/15 0015.
 * 策略逻辑接口
 */
public interface IStrategyManage {
    /**
     * 查询一个用户的所有策略
     * @param userId
     * @return
     */
    List<Strategy> queryStrategy(int userId);

    /**
     * 根据id获得策略
     * @param strategyId
     * @return
     */
    Strategy getStrategy(int strategyId);

    /**
     * 添加策略
     * @param strategy
     * @return
     */
    boolean addStrategy(Strategy strategy);

    /**
     * 删除策略
     * @param strategyId
     * @return
     */
    boolean deleteStrategy(int strategyId);

    /**
     * 更新策略
     * @param strategy
     * @return
     */
    boolean updateStrategy(Strategy strategy);
}
