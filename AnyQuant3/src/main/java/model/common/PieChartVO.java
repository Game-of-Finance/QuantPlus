package model.common;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by JiachenWang on 2016/4/10.
 */
public class PieChartVO {

    /**
     * 饼状图的标题
     */
    public String title;

    /**
     * 饼状图的每个项的名字及原始数值
     */
    public Map<String, Double> originMap;

    public PieChartVO(String title) {
        this.title = title;
        this.originMap = new HashMap<>();
    }

    public PieChartVO(String title, Map<String, Double> originMap) {
        this.title = title;
        this.originMap = originMap;
    }

    public String getTitle() {
        return title;
    }

    public Map<String, Double> getOriginMap() {
        return originMap;
    }
}
