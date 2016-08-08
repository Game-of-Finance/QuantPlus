package model.stock;

import java.util.HashMap;

/**
 * Created by Seven on 16/3/8.
 */
public class StockAttribute {

    private String date;

    private HashMap<String, String> attribute;

    /**
     * open: 开盘价
     * high: 最高价 9.06
     * low: 最低价
     * close: 收盘价
     * adj_price: 后复权价
     * volume: 成交量 17147300
     * turnover: 换手率
     * pe_ttm: 市盈率 ""
     * pb: 市净率 ""
     */
    public StockAttribute(String date, HashMap<String, String> att) {
        this.date = date;
        this.attribute = att;
    }

    public String getAttribute(String field) {
        return attribute.get(field);
    }

    public String getDate() {
        return date;
    }

    public HashMap<String, String> getAttribute() {
        return attribute;
    }

    public double getOpen(){
        String open = this.attribute.get("open");
        return Double.valueOf(open);
    }

    public double getClose(){
        String open = this.attribute.get("close");
        return Double.valueOf(open);
    }

    public double getHigh(){
        String open = this.attribute.get("high");
        return Double.valueOf(open);
    }

    public double getLow(){
        String open = this.attribute.get("low");
        return Double.valueOf(open);
    }

    public double getVolume(){
        String open = this.attribute.get("volume");
        return Double.valueOf(open);
    }

    public double getChange() {
        String open = this.attribute.get("change");
        if(open != null){
            return Double.valueOf(open);
        }else if(this.getOpen() != 0){
            return ( this.getClose() - this.getOpen() ) / this.getOpen();
        }else
            return 0;
    }

    public double getPB() {
        String open = this.attribute.get("pb");
        return Double.valueOf(open);
    }

    public double getAmount() {
        return this.getVolume()* (this.getOpen()+this.getClose()) / 2 ;
    }
}
