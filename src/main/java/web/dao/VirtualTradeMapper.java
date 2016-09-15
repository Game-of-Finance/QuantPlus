package web.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import web.model.btAndVt.BackTestDailyResultPo;
import web.model.btAndVt.VirtualTradePo;

import java.util.ArrayList;

/**
 * Created by linyufan on 16/9/2.
 */
@Repository
public interface VirtualTradeMapper {
    //1
    public void addtrade(String userid, String tradename, double startfund, String starttime, String strategyid, String poolid, String strategyname);

    public String getidByName(String userid, String tradename);

    //2
    public void deletetrade(String userid, String tradeid);

    //3
    public VirtualTradePo getTrade(String userid, String tradeid);

    //4
    public ArrayList<VirtualTradePo> getAllTrade(String userid);

    public ArrayList<BackTestDailyResultPo> getDailyResult(@Param("listname") String listname);

    //5
    public void insertStoptime(String userid, String vid, String time);

    //6
    public void restartVTrade(String userid, String vid);
}
