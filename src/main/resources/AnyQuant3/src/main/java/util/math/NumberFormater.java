package util.math;

import java.math.BigDecimal;
import java.text.DecimalFormat;

/**
 * Created by kylin on 16/5/24.
 * All rights reserved.
 */
public class NumberFormater {

    private static final DecimalFormat df_double = new DecimalFormat("00.00");
    private static final DecimalFormat df_int = new DecimalFormat("#");

    public static String formatDouble(double input){
        return  df_double.format(input);
    }

    public static String formatInteger(double input){
        return  df_int.format(input);
    }

    public static String formatPercent(double input){
        //变为百分比
        input = input * 100;
        //变为字符串
        return NumberFormater.formatDouble(input) + "%";
    }

    public static double string2Double(String input){
        double result = 0;
        try{
            result = Double.parseDouble(input);
        }catch (Exception e){
            result = 0;
        }
        return result;
    }

    public static double cutDouble(double input,int scale){
        try {
            BigDecimal bg = new BigDecimal(input);
            return bg.setScale(scale, BigDecimal.ROUND_HALF_UP).doubleValue();
        }catch (Exception e){
            return Double.MAX_VALUE;
        }
    }
}
