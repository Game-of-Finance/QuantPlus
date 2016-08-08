package model.stock;

/**
 * Created by JiachenWang on 2016/4/1.
 */
public class BasicSingleVO {


    /**
     *  股票名称
     */
    private String stock_name;

    /**
     *  股票编号
     */
    private String stock_num;

    /**
     *  股票涨跌幅
     */
    private Double riseAndFall;

    /**
     *  股票平均换手率
     */
    private Double avgTurnover;

    /**
     *  股票平均市盈率
     */
    private Double avgPe;

    /**
     *  股票平均市净率
     */
    private Double avgPb;

    /**
     *  心理指数
     */
    private Double psychologicalValue;

    /**
     *  振幅
     */
    private Double variableRange;

    public BasicSingleVO(){

    }
    public BasicSingleVO(String stock_name, String stock_num) {
        this.stock_name = stock_name;
        this.stock_num = stock_num;
    }

    public String getStock_name() {
        return stock_name;
    }

    public String getStock_num() {
        return stock_num;
    }

    public Double getPsychologicalValue() {
        return psychologicalValue;
    }


    public Double getVariableRange() {
        return variableRange;
    }

    public Double getAvgPe() {
        return avgPe;
    }

    public void setAvgPe(Double avgPe) {
        this.avgPe = avgPe;
    }

    public Double getRiseAndFall() {
        return riseAndFall;
    }

    public void setRiseAndFall(Double riseAndFall) {
        this.riseAndFall = riseAndFall;
    }

    public Double getAvgTurnover() {
        return avgTurnover;
    }

    public Double getAvgPb() {
        return avgPb;
    }

    public void setAvgTurnover(Double avgTurnover) {
        this.avgTurnover = avgTurnover;
    }

    public void setPsychologicalValue(Double psychologicalValue) {
        this.psychologicalValue = psychologicalValue;
    }

    public void setVariableRange(Double variableRange) {
        this.variableRange = variableRange;
    }

    public void setAvgPb(Double avgPb) {
        this.avgPb = avgPb;
    }

    public void setStock_num(String stock_num) {
        this.stock_num = stock_num;
    }

    public void setStock_name(String stock_name) {
        this.stock_name = stock_name;
    }


}
