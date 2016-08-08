package util.enums;

/**
 * Created by kylin on 16/3/31.
 */
public enum LinearChartType {

    STOCK("股票折线图"),INDUSTRY("行业折线图"),INDUSTRY_COMPARE("行业与大盘对比图")
    ,MACD("MACD图"),RSI("RSI图"),EMA("EMA图"),ARBR("ARBR图");

    String strType;

    LinearChartType(String s) {
        strType = s;
    }

    @Override
    public String toString() {
        return strType;
    }
}
