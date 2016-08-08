package util.math.arima;

import org.junit.Test;

import java.util.ArrayList;

/**
 * Created by kylin on 16/5/26.
 * All rights reserved.
 */
public class ARIMAPredictTest {
    @Test
    public void getOneDayPredict() throws Exception {
        ArrayList<Double> arraylist=new ArrayList<Double>();

        for (int i = 0; i < 100; i++) {
            arraylist.add(i+5.8);
        }
        double result = ARIMAPredict.getOneDayPredict(arraylist);
        System.out.println(result);
    }

}