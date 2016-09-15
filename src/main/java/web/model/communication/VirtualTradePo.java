package web.model.communication;

import java.util.ArrayList;

/**
 * Created by linyufan on 16/9/14.
 */
public class VirtualTradePo {
    public String startdate;

    public String enddate;


    public String userid;

    public String tradeid;

    public String tradename;

    public String strategyid;

    public String strategyname;

    public String poolid;

    public double startfund;        //起始资金

    public double rightfund;        //当前资金

    public String repository;      //当前仓内情况

    public String log;              //日志

    public String state;            //状态

    public Double earning;          //收益

    public Double yearearning;      //年化收益（率)

    public Double basicearning;     //基准收益（率）

    public Double Alpha;            //阿尔法系数

    public Double Beta;             //贝塔系数

    public Double Sharpe;           //夏普系数

    public Double MaxDrawdown;      //最大回撤率

    public ArrayList<BackTestDailyResultPo> dailyResultPos;     //每日结果

    public ArrayList<BackTestDailyResultPo> getDailyResultPos() {
        return dailyResultPos;
    }

    public void setDailyResultPos(ArrayList<BackTestDailyResultPo> dailyResultPos) {
        this.dailyResultPos = dailyResultPos;
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

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getTradeid() {
        return tradeid;
    }

    public void setTradeid(String tradeid) {
        this.tradeid = tradeid;
    }

    public String getTradename() {
        return tradename;
    }

    public void setTradename(String tradename) {
        this.tradename = tradename;
    }

    public String getStrategyid() {
        return strategyid;
    }

    public void setStrategyid(String strategyid) {
        this.strategyid = strategyid;
    }

    public String getStrategyname() {
        return strategyname;
    }

    public void setStrategyname(String strategyname) {
        this.strategyname = strategyname;
    }

    public String getPoolid() {
        return poolid;
    }

    public void setPoolid(String poolid) {
        this.poolid = poolid;
    }

    public double getStartfund() {
        return startfund;
    }

    public void setStartfund(double startfund) {
        this.startfund = startfund;
    }

    public double getRightfund() {
        return rightfund;
    }

    public void setRightfund(double rightfund) {
        this.rightfund = rightfund;
    }

    public String getRepository() {
        return repository;
    }

    public void setRepository(String repository) {
        this.repository = repository;
    }

    public String getLog() {
        return log;
    }

    public void setLog(String log) {
        this.log = log;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public Double getEarning() {
        return earning;
    }

    public void setEarning(Double earning) {
        this.earning = earning;
    }

    public Double getYearearning() {
        return yearearning;
    }

    public void setYearearning(Double yearearning) {
        this.yearearning = yearearning;
    }

    public Double getBasicearning() {
        return basicearning;
    }

    public void setBasicearning(Double basicearning) {
        this.basicearning = basicearning;
    }

    public Double getAlpha() {
        return Alpha;
    }

    public void setAlpha(Double alpha) {
        Alpha = alpha;
    }

    public Double getBeta() {
        return Beta;
    }

    public void setBeta(Double beta) {
        Beta = beta;
    }

    public Double getSharpe() {
        return Sharpe;
    }

    public void setSharpe(Double sharpe) {
        Sharpe = sharpe;
    }

    public Double getMaxDrawdown() {
        return MaxDrawdown;
    }

    public void setMaxDrawdown(Double maxDrawdown) {
        MaxDrawdown = maxDrawdown;
    }
}
