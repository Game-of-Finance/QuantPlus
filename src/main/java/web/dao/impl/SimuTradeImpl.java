package web.dao.impl;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import web.dao.SimuTradeDao;
import web.model.communication.BackTestDailyResultPo;
import web.model.communication.VirtualTradePo;

import java.util.ArrayList;

/**
 * Created by JiachenWang on 2016/9/14.
 */
@SuppressWarnings("restriction")
@Repository("simuTradeDao")
@Transactional
public class SimuTradeImpl implements SimuTradeDao{
    public void addtrade(String userid, String tradename, double startfund, String starttime, String strategyid, String poolid, String strategyname) {

    }

    public String getidByName(String userid, String tradename) {
        return null;
    }

    public void deletetrade(String userid, String tradeid) {

    }

    public VirtualTradePo getTrade(String userid, String tradeid) {
        return null;
    }

    public ArrayList<VirtualTradePo> getAllTrade(String userid) {
        return null;
    }

    public ArrayList<BackTestDailyResultPo> getDailyResult(@Param("listname") String listname) {
        return null;
    }

    public void insertStoptime(String userid, String vid, String time) {

    }

    public void restartVTrade(String userid, String vid) {

    }
}
