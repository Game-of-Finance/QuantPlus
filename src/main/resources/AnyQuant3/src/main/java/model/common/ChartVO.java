package model.common;

import util.enums.PeriodEnum;

/**
 * Created by JiachenWang on 2016/3/16.
 */
public class ChartVO {

    private PeriodEnum period;

    //时间
    private String time;

    public ChartVO(PeriodEnum period, String time) {
        this.period = period;
        this.time = time;
    }

    public PeriodEnum getPeriod() {
        return period;
    }

    public String getTime() {
        return time;
    }
}

