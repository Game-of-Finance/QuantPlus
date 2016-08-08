package model.analyse;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by kylin on 16/4/9.
 *
 * the MACD line is the one line,
 * and the 9-day EMA of it is another line.
 *
 * When plotting the MACD, it usually comes with a histogram as well,
 * This is gotten from subtracting the 9-day EMA line from the MACD-line
 *
 */
public class MACDResult implements ComputableStock {

    // a MACD line got from subtract the longer EMA2 from the shorter EMA1
    Map<String,Double> dif;

    //a 9-day EMA of the MACD line
    Map<String,Double> macd;

    //subtracting the 9-day EMA line from the MACD-line
    Map<String,Double> barValue;

    public MACDResult(Map<String, Double> dif, Map<String, Double> EMA9) {
        this.dif = dif;
        this.macd = EMA9;
        //subtracting the 9-day EMA line from the MACD-line
        this.barValue = new HashMap<>();
        for (String day : this.dif.keySet()){
            if(this.dif.containsKey(day) && this.macd.containsKey(day)){
                double macd = this.dif.get(day);
                double ema = this.macd.get(day);
                this.barValue.put(day,macd-ema);
            }
        }
    }

    public Map<String, Double> getDif() {
        return dif;
    }

    public Map<String, Double> getMacd() {
        return macd;
    }

    public Map<String, Double> getBarValue() {
        return barValue;
    }

    @Override
    public int numberOfDays() {
        return this.dif.size();
    }

    @Override
    public double priceAtDay(int dayIndex) {
        String date = this.dateString(dayIndex);
        return this.dif.get(date);
    }

    @Override
    public List<Double> pricelistAtDay(int dayIndex) {
        return null;
    }

    @Override
    public double changeAtDay(int dayIndex) {
        return 0;
    }

    @Override
    public String dateString(int dayIndex) {
        List<String> sortedDays = new ArrayList<>();
        int i = 0;
        for (String key:this.dif.keySet())
            sortedDays.add(i++,key);
        sortedDays.sort(String::compareTo);
        return sortedDays.get(dayIndex);
    }

    public double getMaxMacd(){
        double result = -999;
        for (String key:this.dif.keySet()){
            double temp = this.dif.get(key);
            if(temp > result)
                result = temp;
        }
        return result;
    }

    public double getMaxEMA9(){
        double result = -999;
        for (String key:this.macd.keySet()){
            double temp = this.macd.get(key);
            if(temp > result)
                result = temp;
        }
        return result;
    }

    public double getMinMacd(){
        double result = 9999;
        for (String key:this.dif.keySet()){
            double temp = this.dif.get(key);
            if(temp < result)
                result = temp;
        }
        return result;
    }

    public double getMinEMA(){
        double result = 9999;
        for (String key:this.macd.keySet()){
            double temp = this.macd.get(key);
            if(temp < result)
                result = temp;
        }
        return result;
    }
}
