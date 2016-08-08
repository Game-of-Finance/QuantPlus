package util.enums;

/**
 * Created by JiachenWang on 2016/4/1.
 */
public enum TypeOfVolumn {
    SINGLE("单股成交量"),INDUSTRY("行业"),MIX("成交量及金额"),VOL_IN_A_DAY("单日成交金额");
    String typeName;

    TypeOfVolumn(String s) {
        typeName = s;
    }
}
