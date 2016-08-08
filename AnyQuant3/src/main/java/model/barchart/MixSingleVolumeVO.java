package model.barchart;


import util.enums.TypeOfVolumn;

import java.util.ArrayList;

/**
 * Created by JiachenWang on 2016/4/1.
 */
public class MixSingleVolumeVO extends VolumeVO {

    String stock_name;
    String stock_num;

    public MixSingleVolumeVO(ArrayList<VolumeChartVO> list, TypeOfVolumn type, String stock_name, String stock_num) {
        super(list, type);
        this.stock_name = stock_name;
        this.stock_num = stock_num;
    }

    public String getStock_name() {
        return stock_name;
    }

    public String getStock_num() {
        return stock_num;
    }
}
