package web.biz.impl;

import web.biz.IStrategyManage;
import web.dao.BackTestDao;
import web.dao.StrategyDao;
import web.dao.stub.BackTestDaoStub;
import web.dao.stub.StrategyDaoStub;
import web.model.strategy.BackTest;
import web.model.strategy.Strategy;

import java.util.List;
import java.util.Set;

/**
 * Created by xyf on 2016/8/15 0015.
 */
public class StrategyManage implements IStrategyManage{
    StrategyDao strategyDao =new StrategyDaoStub();
    BackTestDao backTestDao =new BackTestDaoStub();


    public List<Strategy> queryStrategy(int userId) {
        return strategyDao.queryStrategy(userId);
    }


    public Strategy getStrategy(int strategyId) {
        Strategy strategy =strategyDao.getStrategy(strategyId);
        //回测信息
        Set<BackTest> backTests = backTestDao.getBackTests(strategyId);
        strategy.setBackTestSet(backTests);
        return strategy;
    }


    public boolean addStrategy(Strategy strategy) {

        return strategyDao.addStrategy(strategy);
    }


    public boolean deleteStrategy(int strategyId) {

        return  strategyDao.deleteStrategy(strategyId);
    }

    public boolean updateStrategy(Strategy strategy) {

        return strategyDao.updateStrategy(strategy);
    }
}