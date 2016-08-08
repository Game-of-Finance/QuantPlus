package bl.factory;

import org.junit.Before;
import org.junit.Test;

/**
 * Created by kylin on 16/5/19.
 */
public class BLFactoryTest {

    private BLFactory factory;

    @Before
    public void setUp() throws Exception {
        factory = BLFactory.getInstance();
    }

    @Test
    public void getInstance() throws Exception {
        factory = BLFactory.getInstance();
    }

    @Test
    public void getSingleViewService() throws Exception {
        factory.getAnalyseService();
    }

    @Test
    public void getIndustryViewService() throws Exception {
        factory.getIndustryService();
    }

    @Test
    public void getGetStockService() throws Exception {
        factory.getStockService();
    }


    @Test
    public void getBarChartService() throws Exception {
        factory.getBarChartService();
    }

    @Test
    public void getPieChartService() throws Exception {
        factory.getPieChartService();
    }

}