package bl.analyse.accuracy;

import bl.factory.BLFactory;
import org.junit.Test;
import util.exception.NotFoundException;

/**
 * Created by kylin on 16/6/13.
 * All rights reserved.
 */
public class AccuracyEvaluateTest {



    public AccuracyEvaluateTest() throws NotFoundException {
    }

    @Test
    public void analyseMACD() throws Exception {
        AccuracyEvaluate evaluate = (AccuracyEvaluate) BLFactory.getInstance().getAccuracyService();
        System.out.println(evaluate.analyseMACD("sh600600"));
    }

    @Test
    public void analyseArbr() throws Exception {
        AccuracyEvaluate evaluate = (AccuracyEvaluate) BLFactory.getInstance().getAccuracyService();
        System.out.println(evaluate.analyseArbr("sh600600"));
    }

    @Test
    public void analyseRSI() throws Exception {
        AccuracyEvaluate evaluate = (AccuracyEvaluate) BLFactory.getInstance().getAccuracyService();
        System.out.println(evaluate.analyseRSI("sh600600"));
//        System.out.println(evaluate.analyseRSI("sh601611"));
//        System.out.println(evaluate.analyseRSI("sh603131"));
    }

    @Test
    public void analyseArima() throws Exception {
        //判断预测准确与否的阈值(预测价格与时间价格的偏差比,百分比)
        AccuracyEvaluate evaluate = (AccuracyEvaluate) BLFactory.getInstance().getAccuracyService();
        double threshold = 0.03;
        //改模型预测的下一日价格 与当日实际价格的偏差(百分比) 在阈值之内的概率
        System.out.println(evaluate.analyseArima("sh600600",threshold));
//        System.out.println(evaluate.analyseArima("sh601611",threshold));
//        System.out.println(evaluate.analyseArima("sh603131",threshold));
    }

}