package bl.service;

import bl.impl.StockImpl;
import org.junit.Test;
import util.exception.NotFoundException;

/**
 * Created by kylin on 16/6/13.
 * All rights reserved.
 */
public class RankServiceTest {

    private StockService stockService = new StockImpl();

    public RankServiceTest() throws NotFoundException {
    }

    @Test
    public void testDate(){

        System.out.println(stockService.getLatestDate("600018"));
    }
}