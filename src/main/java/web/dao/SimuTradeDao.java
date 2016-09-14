package web.dao;

import org.apache.ibatis.annotations.Param;
import web.model.communication.BackTestDailyResultPo;
import web.model.communication.VirtualTradePo;

import java.util.ArrayList;

/**
 * Created by linyufan on 16/9/13.
 */
public interface SimuTradeDao {
    //1
    public void addtrade(String userid, String tradename, double startfund, String starttime,String strategyid,String poolid,String strategyname);

    public String getidByName(String userid,String tradename);

    //2
    public void deletetrade(String userid ,String tradeid);

    //3
    public VirtualTradePo getTrade(String userid ,String tradeid);

    //4
    public ArrayList<VirtualTradePo> getAllTrade(String userid);

    public ArrayList<BackTestDailyResultPo> getDailyResult(@Param("listname") String listname);

    //5
    public void insertStoptime(String userid,String vid,String time);

    //6
    public void restartVTrade(String userid,String vid);
}
