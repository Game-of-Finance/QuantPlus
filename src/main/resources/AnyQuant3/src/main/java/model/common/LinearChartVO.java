package model.common;

import util.math.sort.MySort;
import util.enums.LinearChartType;

import java.util.List;
import java.util.Map;

/**
 * 折线图VO
 */
public class LinearChartVO{

    /**
     * 折线图种类
     */
    private LinearChartType chartType;

    /**
     * 折线图各个数据列
     */
    private List<MyChartSeries> chartSeries;

    /**
     * 折线图数据的下界
     */
    private double upperBound;

    /**
     * 折线图数据的上界
     */
    private double lowerBound;

    /**
     * x轴名称
     */
    private String xName;

    /**
     * y轴名称
     */
    private String yName;

    /**
     * 表名称
     */
    private String title;

    /**
     * Y轴间隔
     */
    private double step;

    public LinearChartVO(List<MyChartSeries> chartSeries, LinearChartType chartType) {
        this.chartSeries = chartSeries;
        this.chartType = chartType;
        this.calculateBound();
    }

    private void calculateBound() {
        double up = -100;
        double down = 1000;

        for(MyChartSeries series:this.chartSeries){
            Map<String,Double> hashMap = series.getXyItem();
            double max = MySort.getMax(hashMap);
            double min = MySort.getMin(hashMap);
            if(max > up)
                up = max;
            if(min < down)
                down = min;
        }
        double step = (up-down)/10;

        this.upperBound = up + step;
        this.lowerBound = down - step;
    }

    public LinearChartVO(LinearChartType chartType, List<MyChartSeries> chartSeries, double upperBound, double lowerBound) {
        this.chartType = chartType;
        this.chartSeries = chartSeries;
        this.upperBound = upperBound;
        this.lowerBound = lowerBound;
    }

    public String getxName() {
        return xName;
    }

    public void setxName(String xName) {
        this.xName = xName;
    }

    public LinearChartType getChartType() {
        return chartType;
    }

    public List<MyChartSeries> getChartSeries() {
        return chartSeries;
    }

    public double getUpperBound() {
        return upperBound;
    }

    public void setUpperBound(double upperBound) {
        this.upperBound = upperBound;
    }

    public double getLowerBound() {
        return lowerBound;
    }

    public void setLowerBound(double lowerBound) {
        this.lowerBound = lowerBound;
    }

    public String getyName() {
        return yName;
    }

    public void setyName(String yName) {
        this.yName = yName;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public double getStep() {
        return step;
    }

    public void setStep(double step) {
        this.step = step;
    }

}
