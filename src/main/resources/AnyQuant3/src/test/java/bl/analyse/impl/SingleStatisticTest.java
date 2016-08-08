package bl.analyse.impl;

import bl.impl.StockImpl;
import dao.impl.StockReader;
import dao.impl.TradeReader;
import data.impl.AnalysisDataImpl;
import data.impl.StockDataImpl;
import org.junit.Test;
import util.exception.NotFoundException;

/**
 * Created by JiachenWang on 2016/6/2.
 */
public class SingleStatisticTest {

    StockReader read = new StockReader();
    SingleStatistic singleStatistic = new SingleStatistic(new StockImpl(), new StockDataImpl(read), new AnalysisDataImpl(new TradeReader()));

    public SingleStatisticTest() throws NotFoundException {
    }

    @Test
    public void getVarianceOfPrice() throws Exception {

    }

    @Test
    public void getAvgPrice() throws Exception {

    }

    @Test
    public void getAllVarianceOfPrice() throws Exception {
//        System.out.println("------------------------------------------------------");
//        System.out.println("Result : " + singleStatistic.getAllVarianceOfPrice("2016-05"));
    }

    @Test
    public void cal90CC() throws Exception {

    }

}