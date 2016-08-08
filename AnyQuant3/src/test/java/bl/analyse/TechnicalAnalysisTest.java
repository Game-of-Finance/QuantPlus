package bl.analyse;

import bl.analyse.impl.TechnicalAnalysis;
import bl.analyse.service.TechnicalAnalysisStrategy;
import bl.tool.StockStub;
import bl.service.StockService;
import model.analyse.ARBResult;
import model.analyse.MACDResult;
import model.stock.StockVO;
import org.junit.Test;

import java.util.Map;

/**
 * Created by kylin on 16/5/19.
 */
public class TechnicalAnalysisTest {

    private StockService getStock = new StockStub();

    private TechnicalAnalysisStrategy strategy = new TechnicalAnalysis();

    @Test
    public void calculateRSI() throws Exception {
        StockVO stockVO = this.getStock.getStock("sh600015","2016-01-01","2016-04-13",
                "open+close+high",null);
        Map<String, Double> hashMap = this.strategy.calculateRSI(stockVO,6);
        System.out.println(hashMap.size());
    }

    @Test
    public void calculateMACD() throws Exception {
        StockVO stockVO = this.getStock.getStock("sh600000", "2015-01-01", "2016-04-13",
                "open+close+high", null);
        MACDResult macdResult = this.strategy.calculateMACD(stockVO);
        Map<String, Double> hashMap = macdResult.getBarValue();
        System.out.println(hashMap.size());
    }

    @Test
    public void calculateEMA() throws Exception {
        StockVO stockVO = getStock.getStock("sh600015", "2016-01-01", "2016-04-13",
                "open+close+high", null);
        Map<String, Double> hashMap = this.strategy.calculateEMA(stockVO, 6);
        System.out.println(hashMap.size());
    }

    @Test
    public void calculateARBR() throws Exception {
        StockVO stockVO = getStock.getStock("sh600015", "2016-04-01", "2016-05-31",
                "open+close+high+low", null);
        ARBResult chartVO = this.strategy.calculateARBR(stockVO, 26);
        System.out.println(chartVO.getAr().size());
    }
}