package util.math.arima;

import java.util.List;

/**
 * Created by kylin on 16/5/26.
 * All rights reserved.
 */
public class ARIMAPredict {

    public static double getOneDayPredict(List<Double> input){
        double[] dataArray=new double[input.size()-1];
        for(int i = 0; i< input.size()-1; i++)
            dataArray[i]= input.get(i);

        ARIMA arima=new ARIMA(dataArray);
        int []model=arima.getARIMAmodel();

        int size = input.size()-1;
        double lastData = input.get(size);
        int temp = arima.predictValue(model[0],model[1]);

        double result = arima.aftDeal(temp);
        double error = (arima.aftDeal(temp)-lastData) / lastData;
//        System.out.print(error*100);
//        System.out.println("%");
        return result;
    }


}
