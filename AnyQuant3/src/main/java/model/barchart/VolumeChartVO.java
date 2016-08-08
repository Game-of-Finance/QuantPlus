package model.barchart;

import util.enums.PeriodEnum;
import model.common.ChartVO;

/**
 * Created by JiachenWang on 2016/3/16.
 */
public class VolumeChartVO extends ChartVO {

    private double volume;
    private boolean isRise;
    private double sumPrice;

    public VolumeChartVO(PeriodEnum period, String time, double volume, boolean isRise) {
        super(period, time);
        this.volume = volume;
        this.isRise = isRise;
    }

    public VolumeChartVO(PeriodEnum period, String time, double volume, boolean isRise, double sumPrice) {
        super(period, time);
        this.volume = volume;
        this.isRise = isRise;
        this.sumPrice = sumPrice;
    }

    public VolumeChartVO(PeriodEnum period, String time, double volume) {
        super(period, time);
        this.volume = volume;
    }

    public double getVolumn() {
        return volume;
    }

    public boolean isRise() {
        return isRise;
    }

    public double getSumPrice() {
        return sumPrice;
    }
}