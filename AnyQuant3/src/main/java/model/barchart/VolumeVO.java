package model.barchart;

import util.enums.TypeOfVolumn;

import java.util.ArrayList;

/**
 * Created by JiachenWang on 2016/4/1.
 * 柱状图封装父类
 */
public class VolumeVO {

    private ArrayList<VolumeChartVO> list;

    private TypeOfVolumn type;

    private String title = "";
    private String xLabel = "";
    private String yLabel = "";

    public VolumeVO(ArrayList<VolumeChartVO> list, TypeOfVolumn type) {
        this.list = list;
        this.type = type;
    }

    public ArrayList<VolumeChartVO> getList() {
        return list;
    }

    public TypeOfVolumn getType() {
        return type;
    }

    public void setLabelInfo(String title, String xLabel, String yLabel){
        this.title = title;
        this.xLabel = xLabel;
        this.yLabel = yLabel;
    }

    public String getTitle() {
        return title;
    }

    public String getxLabel() {
        return xLabel;
    }

    public String getyLabel() {
        return yLabel;
    }

}
