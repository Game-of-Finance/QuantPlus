package web.model.communication;

import java.util.ArrayList;

/**
 * Created by linyufan on 16/9/16.
 */
public class BackTestResultPo {
    public String startdate;

    public String enddate;

    public String testdate;

    public String userid;

    public String strategyid;

    public String resultid;

    public ArrayList<BackTestDailyResultPo> resultdatas;

    public int iserror=0;

    public String error_message;


    public BackTestResultPo(String startdate, String enddate , String testdate , String userid, String strategyid, String resultid){
        this.startdate = startdate;
        this.enddate = enddate;
        this.testdate = testdate;
        this.userid = userid;
        this.strategyid = strategyid;
        this.resultid = resultid;
    }

    public BackTestResultPo(int iserror, String error_message){
        this.iserror = iserror;
        this.error_message = error_message;
    }


    public ArrayList<BackTestDailyResultPo> getResultdatas() {
        return resultdatas;
    }

    public void setResultdatas(ArrayList<BackTestDailyResultPo> resultdatas) {
        this.resultdatas = resultdatas;
    }

    public String getStartdate() {
        return startdate;
    }

    public void setStartdate(String startdate) {
        this.startdate = startdate;
    }

    public String getEnddate() {
        return enddate;
    }

    public void setEnddate(String enddate) {
        this.enddate = enddate;
    }

    public String getTestdate() {
        return testdate;
    }

    public void setTestdate(String testdate) {
        this.testdate = testdate;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getStrategyid() {
        return strategyid;
    }

    public void setStrategyid(String strategyid) {
        this.strategyid = strategyid;
    }

    public String getResultid() {
        return resultid;
    }

    public void setResultid(String resultid) {
        this.resultid = resultid;
    }

//    public Double earning;          //回测收益
//
//    public Double yearearning;      //回测年化收益（率)
//
//    public Double basicearning;     //基准收益（率）
//
//    public Double Alpha;            //阿尔法系数
//
//    public Double Beta;             //贝塔系数
//
//    public Double Sharpe;           //夏普系数
//
//    public Double MaxDrawdown;      //最大回撤率
//
}
