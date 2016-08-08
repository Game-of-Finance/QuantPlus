package util.math.season;

import bl.impl.StockImpl;
import bl.service.StockService;
import org.junit.Test;
import util.exception.NotFoundException;

/**
 * Created by JiachenWang on 2016/5/30.
 */
public class SeasonPredictTest {

    @Test
    public void testAvgPricePredict() throws NotFoundException {
        StockService stockService = new StockImpl();
        SeasonPredict pre = new SeasonPredict(stockService);
        System.out.println(pre.avgPricePredict("sh600600", "2016", 2));
    }

    @Test
    public void testVolumePredict() throws NotFoundException {
        StockService stockService = new StockImpl();
        SeasonPredict pre = new SeasonPredict(stockService);
        System.out.println(pre.volumnPredict("sh600600", "2016", 2));
    }

}