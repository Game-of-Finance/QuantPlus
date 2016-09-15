package web.tools;

/**
 * Created by Administrator on 2016/9/15 0015.
 */
public class NumberUtil {
    public static int parseInt(String s){
        if(s.equals(""))
            return 0;
        return Integer.parseInt(s);
    }

    public static double parseDouble(String s){
        if(s.equals(""))
            return 0;
        return Double.parseDouble(s);
    }
}
