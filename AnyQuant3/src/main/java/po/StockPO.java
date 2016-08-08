package po;

import util.constant.StockConstant;

import java.util.HashMap;

/**
 * Created by kylin on 16/3/8.
 */
public class StockPO {

    /**
     * 股票编号
     */
    String number;

    /**
     * 股票名称
     */
    String name;

    /**
     * 股票各项具体信息
     */
    HashMap<String, HashMap<String, String>> infomation;

    public StockPO(String number, HashMap<String, HashMap<String, String>> infomation) {
        this.number = number;
        this.infomation = infomation;
    }

    public void setName(String name) {
        this.name = name;
    }

    public HashMap<String, String> getOneDayInfo(String day) {
        return infomation.get(day);
    }

    public String getNumber() {
        return number;
    }

    public String getName() {
        return name;
    }

    public HashMap<String, HashMap<String, String>> getInfomation() {
        return infomation;
    }

    public boolean hasInfo(String date){
        this.infomation.get(date);
        if (this.infomation.get(date)==null)
            return false;
        else
            return true;
    }

    @Override
    public String toString() {
        String result = "";
        int days = infomation.size();
        result += ("name : " + this.name + ", there are " + Integer.toString(days) + " days of info");
        return result;
    }

    public String getLatestDate(){
        String latest = StockConstant.STOCK_INFO_START;

        for (String date:this.infomation.keySet()){
            if(date.compareTo(latest) > 0)
                latest = date;
        }
        return latest;
    }
}
