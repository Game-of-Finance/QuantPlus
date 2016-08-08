package bl.tool.piechart;

import bl.impl.RankImpl;
import bl.impl.StockImpl;
import bl.service.StockService;
import model.common.PieChartVO;
import org.junit.Test;
import util.exception.NotFoundException;
import util.time.DateCount;

/**
 * Created by kylin on 16/6/13.
 * All rights reserved.
 */
public class PieChartImplTest {

    private PieChartImpl pieChart = new PieChartImpl();
    private RankImpl rankService = new RankImpl();
    private StockService stock2Service = new StockImpl();

    public PieChartImplTest() throws NotFoundException {
    }

    @Test
    public void getPieVolumeVO() throws Exception {
        String latestDate = stock2Service.getLatestDate("sh600064");
        String start = DateCount.count(latestDate,-14);
        PieChartVO pieChartVO = pieChart.getPieVolumeVO("aaa","sh600064",start,latestDate);
        System.out.println(pieChartVO.getOriginMap());
    }

    @Test
    public void getPieAmountVO() throws Exception {
        String latestDate = stock2Service.getLatestDate("sh600064");
        String start = DateCount.count(latestDate,-14);
        PieChartVO pieChartVO = pieChart.getPieAmountVO("aaa","sh600064",start,latestDate);
        System.out.println(pieChartVO.getOriginMap());
    }

}