package web.dao;



import web.model.btAndVt.StrategyPo;
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
	List<StrategyPo> queryStrategy(String userId);

	/**
	 * 根据策略id获得该策略
	 * @param sid
	 * @return
	 */
	StrategyPo getStrategy(int sid);

	/**
	 * 添加策略
	 * @param userid, py_text, sname
	 * @return
	 */
	boolean addStrategy(String userid, String py_text, String sname);

	/**
	 * 删除策略
	 * @param sid
	 * @return
	 */
	boolean deleteStrategy(int sid);

	/**
	 * 更新策略
	 * @param sid, py_text
	 * @return
	 */
	boolean updatePy(int sid, String py_text);
	/**
	 * 更新策略
	 * @param sid, sname
	 * @return
	 */
	boolean updateSname(int sid, String sname);

//	boolean updatePy(String py_text, String userid, String sname);
//
//	boolean updateSname(String afterName, String userid, String beforeName);
//
//	boolean deleteStrategy(String userid, String sname);

	StrategyPo getStrategy(String userid, String sname);
}
