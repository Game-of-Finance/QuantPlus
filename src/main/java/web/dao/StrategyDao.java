package web.dao;



import web.model.strategy.Strategy;

import java.util.List;

/**
 * Created by xyf on 2016/8/14 0014.
 */
public interface StrategyDao {
	/**
	 * 根据用户id查询该用户所有策略
	 * @param userId
	 * @return
	 */
	List<Strategy> queryStrategy(int userId);

	/**
	 * 根据策略id获得该策略
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
