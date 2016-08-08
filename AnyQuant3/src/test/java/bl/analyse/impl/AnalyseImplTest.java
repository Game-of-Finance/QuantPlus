package bl.analyse.impl;

import bl.impl.StockImpl;
import org.junit.Test;
import util.exception.NotFoundException;

/**
 * Created by kylin on 16/6/2.
 * All rights reserved.
 */
public class AnalyseImplTest {

    private AnalyseImpl analyse = new AnalyseImpl(new StockImpl());

    public AnalyseImplTest() throws NotFoundException {
    }

    @Test
    public void getBasicSingleInfo() throws Exception {
    }

    @Test
    public void getStockRSI() throws Exception {

    }

    @Test
    public void getStockEMA() throws Exception {

    }

    @Test
    public void getStockMACD() throws Exception {

    }

    @Test
    public void getStockARBR() throws Exception {

    }

}