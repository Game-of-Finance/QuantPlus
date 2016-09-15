package web.biz.impl.BackTestBL;

import org.springframework.stereotype.Service;
import web.dao.BackTestBL.StrategyMapper;
import web.dao.BackTestBL.VirtualTradeMapper;
import web.model.btAndVt.StrategyPo;
import web.model.btAndVt.VirtualTradePo;
import web.model.enumPo.DeleteState;
import web.biz.BackTestBL.VirtualTradeService;

import javax.annotation.Resource;
import java.time.LocalDate;
import java.util.ArrayList;

/**
 * Created by linyufan on 16/9/2.
 */
@Service("virtualTradeService")
public class VirtualTradeImpl implements VirtualTradeService {

    @Resource
    public VirtualTradeMapper virtualTradeMapper;
    @Resource
    public StrategyMapper strategyMapper;
    @Override
    public String addtrade(String userid, String tradename, int startfund, String starttime,String strategyid,String poolid) {
        StrategyPo strategyPo = strategyMapper.selectStrategy(userid,strategyid);
        virtualTradeMapper.addtrade(userid,tradename,startfund,starttime,strategyid,poolid,strategyPo.getStrategyname());
        String id = virtualTradeMapper.getidByName(userid,tradename);

        return id;
    }

    @Override
    public DeleteState deletetrade(String userid, String tradeid) {
        virtualTradeMapper.deletetrade(userid,tradeid);
        return DeleteState.删除成功;
    }

    @Override
    public VirtualTradePo getTrade(String userid, String vid) {
        VirtualTradePo virtualTradePo = virtualTradeMapper.getTrade(userid,vid);
        String listname = virtualTradePo.getTradeid();
        listname = "sim_"+listname;
        virtualTradePo.setDailyResultPos(virtualTradeMapper.getDailyResult(listname));

        return virtualTradePo;
    }

    @Override
    public ArrayList<VirtualTradePo> getAllTrade(String userid) {
        ArrayList<VirtualTradePo> temp = virtualTradeMapper.getAllTrade(userid);
        for (int i=0;i<temp.size();i++){
            String listname = temp.get(i).getTradeid();
            listname = "sim_"+listname;
            temp.get(i).setDailyResultPos(virtualTradeMapper.getDailyResult(listname));
        }
        return temp;
    }

    @Override
    public VirtualTradePo stopVTrade(String userid, String vid) {
        virtualTradeMapper.insertStoptime(userid,vid, LocalDate.now().toString());
        return virtualTradeMapper.getTrade(userid, vid);
    }

    @Override
    public VirtualTradePo restartVTrade(String userid, String vid) {
        virtualTradeMapper.restartVTrade(userid, vid);
        return virtualTradeMapper.getTrade(userid, vid);
    }


}
