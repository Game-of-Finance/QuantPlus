package web.biz.BackTestBL;

import web.model.btAndVt.BackTestResultPo;

import java.util.ArrayList;

/**
 * Created by linyufan on 16/7/23.
 */
public interface BackTestService {


//    /**
//     * 获得回测结果
//     * @param resultid
//     * @return
//     */
//    public BackTestResultPo getBackTestResult(String resultid);

//    public AddState addBackTestResult(BackTestResultPo backTestResultPo);
//

    /**
     * 开始回测并返回结果
     * @param strategyid
     * @param userid
     * @param startdate
     * @param enddate
     * @return
     */
    public BackTestResultPo runJsonBackTest(String strategyid, String userid, String startdate, String enddate, ArrayList<String> stocklist);

    public BackTestResultPo runJsonBackTest(String strategyid, String userid, String startdate, String enddate, ArrayList<String> stocklist, int initmoney);


    public BackTestResultPo runPythonBackTest(String strategyid, String userid, String startdate, String enddate);

    public BackTestResultPo runPythonBackTest(String strategyid, String userid, String startdate, String enddate, int initmoney);

//    /**
//     * 编译
//     * @param strategyid
//     * @param stockPoolid
//     * @param startdate
//     * @return
//     */
//    public BackTestResultPo runSimulation(String strategyid,String stockPoolid,String startdate);
}
