package web.biz.impl;

import org.springframework.stereotype.Service;
import web.tools.backtesting.BackTesting;
//import web.tools.strategy_module.RookieModule;
import web.dao.BackTestMapper;
import web.model.btAndVt.BackTestResultPo;
import web.biz.BackTestService;

import javax.annotation.Resource;
import java.time.LocalDate;

/**
 * Created by linyufan on 16/9/7.
 */

@Service("backTestService")
public class BackTestImpl implements BackTestService{

    @Resource
    public BackTestMapper backTestMapper;

//    @Override
//    public BackTestResultPo runJsonBackTest(String strategyid, String userid, String startdate, String enddate, ArrayList<String> stocklist) {
//        String resultid = backTestMapper.getResultid(userid,strategyid,startdate, enddate);
//        String error = new String();
//        if(resultid==null) {
//            String json = backTestMapper.getJson(userid, strategyid);
//            RookieModule rookieModule = new RookieModule(json, stocklist);
//            String python = rookieModule.getCode();
//            backTestMapper.setPython(userid, strategyid, python);
//
//            BackTesting backTesting = null;
//            try {
//                backTesting = new BackTesting(Integer.valueOf(strategyid), Integer.valueOf(userid), startdate, enddate);
//                error = backTesting.runBacktesting();
//                if(error.startsWith("1")){
//                    return new BackTestResultPo(1,error);
//                }
//            } catch (ClassNotFoundException e) {
//                e.printStackTrace();
//            }
////        } catch (SQLException e) {
////            e.printStackTrace();
////        }
//
//            resultid = backTestMapper.getResultid(userid, strategyid, startdate, enddate);
//        }
//
//        BackTestResultPo backTestResultPo = new BackTestResultPo(startdate,enddate, LocalDate.now().toString(),userid,strategyid,resultid);
//        String listname = "result_" + resultid;
//        backTestResultPo.resultdatas = backTestMapper.getResult(listname);
//
//        return backTestResultPo;
//    }

//    @Override
//    public BackTestResultPo runJsonBackTest(String strategyid, String userid, String startdate, String enddate, ArrayList<String> stocklist, int initmoney) {
//        String resultid = backTestMapper.getResultid(userid,strategyid,startdate, enddate);
//        String error = new String();
//        if(resultid==null) {
//            String json = backTestMapper.getJson(userid, strategyid);
//            RookieModule rookieModule = new RookieModule(json, stocklist);
//            String python = rookieModule.getCode();
//            backTestMapper.setPython(userid, strategyid, python);
//
//            BackTesting backTesting = null;
//            try {
//                backTesting = new BackTesting(Integer.valueOf(strategyid), Integer.valueOf(userid), startdate, enddate,initmoney);
//                error = backTesting.runBacktesting();
//                if(error.startsWith("1")){
//                    return new BackTestResultPo(1,error);
//                }
//            } catch (ClassNotFoundException e) {
//                e.printStackTrace();
//            }
////        } catch (SQLException e) {
////            e.printStackTrace();
////        }
//
//            resultid = backTestMapper.getResultid(userid, strategyid, startdate, enddate);
//        }
//
//        BackTestResultPo backTestResultPo = new BackTestResultPo(startdate,enddate, LocalDate.now().toString(),userid,strategyid,resultid);
//        String listname = "result_" + resultid;
//        backTestResultPo.resultdatas = backTestMapper.getResult(listname);
//
//        return backTestResultPo;
//    }

  
    public BackTestResultPo runPythonBackTest(String strategyid, String userid, String startdate, String enddate) {
        String resultid = backTestMapper.getResultid(userid,strategyid,startdate, enddate);
        String error = new String();
        if(resultid==null) {

            BackTesting backTesting = null;
            try {
                backTesting = new BackTesting(Integer.valueOf(strategyid), Integer.valueOf(userid), startdate, enddate);
//                System.out.println("here1");
                backTesting.runBacktesting();
//                System.out.println("here2");
                if(error.startsWith("1")){
                    return new BackTestResultPo(1,error);
                }
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }

//            System.out.println("here3");

            resultid = backTestMapper.getResultid(userid, strategyid, startdate, enddate);
        }
        BackTestResultPo backTestResultPo = new BackTestResultPo(startdate,enddate, LocalDate.now().toString(),userid,strategyid,resultid);
        String listname = "result_" + resultid;
        backTestResultPo.resultdatas = backTestMapper.getResult(listname);

        return backTestResultPo;
    }

   
    public BackTestResultPo runPythonBackTest(String strategyid, String userid, String startdate, String enddate, int initmoney) {
        String resultid = backTestMapper.getResultid(userid,strategyid,startdate, enddate);
        String error = new String();
        if(resultid==null) {

            BackTesting backTesting = null;
            try {
                backTesting = new BackTesting(Integer.valueOf(strategyid), Integer.valueOf(userid), startdate, enddate,initmoney);
//                System.out.println("here1");
                backTesting.runBacktesting();
//                System.out.println("here2");
                if(error.startsWith("1")){
                    return new BackTestResultPo(1,error);
                }
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }

//            System.out.println("here3");

            resultid = backTestMapper.getResultid(userid, strategyid, startdate, enddate);
        }
        BackTestResultPo backTestResultPo = new BackTestResultPo(startdate,enddate, LocalDate.now().toString(),userid,strategyid,resultid);
        String listname = "result_" + resultid;
        backTestResultPo.resultdatas = backTestMapper.getResult(listname);

        return backTestResultPo;
    }
}
