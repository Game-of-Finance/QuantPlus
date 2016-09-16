//package web.biz.impl;
//
//import org.springframework.stereotype.Service;
//import web.biz.ISimuTradeManage;
//import web.dao.SimuTradeDao;
//import web.dao.StrategyDao;
//import web.model.communication.VirtualTradePo;
//import web.model.strategy.Strategy;
//import web.tools.MyMessage;
//
//import javax.annotation.Resource;
//import java.time.LocalDate;
//import java.util.ArrayList;
//
///**
// * Created by linyufan on 16/9/13.
// */
//@Service
//public class SimuTradeManage implements ISimuTradeManage {
//    @Resource
//    public SimuTradeDao virtualTradeMapper;
//    @Resource
//    public StrategyDao strategyMapper;
//
//
//    public String addtrade(String userid, String tradename, int startfund, String starttime,String strategyid,String poolid) {
//        Strategy strategy = strategyMapper.getStrategy(Integer.valueOf(strategyid));
//        virtualTradeMapper.addtrade(userid,tradename,startfund,starttime,strategyid,poolid,strategy.getName());
//        String id = virtualTradeMapper.getidByName(userid,tradename);
//
//        return id;
//    }
//
//
//    public MyMessage deletetrade(String userid, String tradeid) {
//        virtualTradeMapper.deletetrade(userid,tradeid);
//        return null;
//    }
//
//    public VirtualTradePo getTrade(String userid, String vid) {
//        VirtualTradePo virtualTradePo = virtualTradeMapper.getTrade(userid,vid);
//        String listname = virtualTradePo.getTradeid();
//        listname = "sim_"+listname;
//        virtualTradePo.setDailyResultPos(virtualTradeMapper.getDailyResult(listname));
//
//        return virtualTradePo;
//    }
//
//    public ArrayList<VirtualTradePo> getAllTrade(String userid) {
//        ArrayList<VirtualTradePo> temp = virtualTradeMapper.getAllTrade(userid);
//        for (int i=0;i<temp.size();i++){
//            String listname = temp.get(i).getTradeid();
//            listname = "sim_"+listname;
//            temp.get(i).setDailyResultPos(virtualTradeMapper.getDailyResult(listname));
//        }
//        return temp;
//    }
//
//    public VirtualTradePo stopVTrade(String userid, String vid) {
//        virtualTradeMapper.insertStoptime(userid,vid, LocalDate.now().toString());
//        return virtualTradeMapper.getTrade(userid, vid);
//    }
//
//    public VirtualTradePo restartVTrade(String userid, String vid) {
//        virtualTradeMapper.restartVTrade(userid, vid);
//        return virtualTradeMapper.getTrade(userid, vid);
//    }
//}
