package web.model.strategy;

import java.awt.*;
import java.util.Date;

/**
 * Created by Administrator on 2016/8/14 0014.
 * 回测实体类
 */
public class BackTest {
    //单位时间类型有两种，分为每天和每分钟
    public static final int EACH_DAY =86400;
    public static final int EACH_MINUTE =60;

    private int id;//回测id
    private int strategyId;//所属策略id
    private String python;//该回测使用的python代码
    private Date testTime; //回测测试时间
    private double initialMoney;// 初始资金
    private Date testStartTime ;//回测开始日期
    private Date testEndTime ;//回测结束日期
    private int unitTime=EACH_DAY;// 单位时间，默认是每天

    //回测结果部分
    //以下是用于显示必须用到的字段
    private long consumingTime; //耗时
    private double maxDrowdown ; //最大回撤
    private double annualizedReturn; //年化收益
    private double income;//策略收益


    //其他包含的字段略


    public BackTest() {
    }

    public BackTest(int id, int strategyId, String python, Date testTime, double initialMoney,
                    Date testStartTime, Date testEndTime, int unitTime) {
        this.id = id;
        this.strategyId=strategyId;
        this.python=python;
        this.testTime = testTime;
        this.initialMoney = initialMoney;
        this.testStartTime = testStartTime;
        this.testEndTime = testEndTime;
        this.unitTime = unitTime;
    }

    public BackTest(int id, int strategyId, String python, Date testTime,
                    double initialMoney, Date testStartTime, Date testEndTime, int unitTime,
                    long consumingTime, double maxDrowdown, double annualizedReturn) {
        this.id = id;
        this.strategyId = strategyId;
        this.python = python;
        this.testTime = testTime;
        this.initialMoney = initialMoney;
        this.testStartTime = testStartTime;
        this.testEndTime = testEndTime;
        this.unitTime = unitTime;
        this.consumingTime = consumingTime;
        this.maxDrowdown = maxDrowdown;
        this.annualizedReturn = annualizedReturn;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getStrategyId() {
        return strategyId;
    }

    public void setStrategyId(int strategyId) {
        this.strategyId = strategyId;
    }

    public String getPython() {
        return python;
    }

    public void setPython(String python) {
        this.python = python;
    }

    public Date getTestTime() {
        return testTime;
    }

    public void setTestTime(Date testTime) {
        this.testTime = testTime;
    }

    public double getInitialMoney() {
        return initialMoney;
    }

    public void setInitialMoney(double initialMoney) {
        this.initialMoney = initialMoney;
    }

    public Date getTestStartTime() {
        return testStartTime;
    }

    public void setTestStartTime(Date testStartTime) {
        this.testStartTime = testStartTime;
    }

    public Date getTestEndTime() {
        return testEndTime;
    }

    public void setTestEndTime(Date testEndTime) {
        this.testEndTime = testEndTime;
    }

    public int getUnitTime() {
        return unitTime;
    }

    public void setUnitTime(int unitTime) {
        this.unitTime = unitTime;
    }

    public long getConsumingTime() {
        return consumingTime;
    }

    public void setConsumingTime(long consumingTime) {
        this.consumingTime = consumingTime;
    }

    public double getMaxDrowdown() {
        return maxDrowdown;
    }

    public void setMaxDrowdown(double maxDrowdown) {
        this.maxDrowdown = maxDrowdown;
    }

    public double getAnnualizedReturn() {
        return annualizedReturn;
    }

    public void setAnnualizedReturn(double annualizedReturn) {
        this.annualizedReturn = annualizedReturn;
    }

    public double getIncome() {
        return income;
    }

    public void setIncome(double income) {
        this.income = income;
    }
}
