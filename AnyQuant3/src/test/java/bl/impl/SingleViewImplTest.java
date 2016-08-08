package bl.impl;

import bl.analyse.impl.AnalyseImpl;
import bl.factory.BLFactory;
import bl.service.StockService;
import bl.tool.StockStub;
import model.stock.StockVO;
import org.junit.Test;
import util.constant.StockConstant;
import util.exception.BadInputException;
import util.exception.NotFoundException;

/**
 * Created by kylin on 16/5/19.
 */
public class SingleViewImplTest {

    private StockService stockService = new StockStub();

    private AnalyseImpl singleView
            = new AnalyseImpl(BLFactory.getInstance().getStockService());

    private StockVO stockVO= stockService.getStock("sh600519","2015-01-1","2016-05-05", StockConstant.AllFields,null);

    public SingleViewImplTest() throws NotFoundException, BadInputException {
    }

    @Test
    public void getBasicSingleInfo() throws Exception {
        System.out.println(stockVO.numberOfDays());
        singleView.getBasicSingleInfo(stockVO,"2016-01-10","2016-05-05");
    }

    @Test
    public void getStockRSI() throws Exception {
        singleView.getStockRSI(stockVO);
    }

    @Test
    public void getStockEMA() throws Exception {
        singleView.getStockEMA(stockVO);
    }

    @Test
    public void getStockMACD() throws Exception {
        singleView.getStockMACD(stockVO);
    }

}