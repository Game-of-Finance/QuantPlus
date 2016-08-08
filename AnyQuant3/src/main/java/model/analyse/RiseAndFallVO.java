package model.analyse;

import util.math.NumberFormater;

/**
 * Created by kylin on 16/5/23.
 * All rights reserved.
 */
public class RiseAndFallVO implements Comparable{

    /**
     * 股票或者行业名称
     */
    private String name;

    /**
     * 用于显示在界面上的涨跌幅,格式: xx.xx%
     */
    private String riseStr;

    private double rise;

    public RiseAndFallVO(String name, double rise) {
        this.name = name;
        this.rise = rise;
        this.riseStr = NumberFormater.formatPercent(rise);
    }

    public String getName() {
        return name;
    }

    public String getRiseStr() {
        return riseStr;
    }

    @Override
    public int compareTo(Object o) {
        RiseAndFallVO another = (RiseAndFallVO) o;
        if(this.rise < another.rise)
            return -1;
        else if(this.rise == another.rise)
            return 0;
        else
            return 1;
    }
}
