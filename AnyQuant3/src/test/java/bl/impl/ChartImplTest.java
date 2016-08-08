package bl.impl;

import bl.service.ChartService;
import bl.service.StockService;
import model.barchart.VolumeVO;
import model.common.LinearChartVO;
import org.junit.Test;
import util.exception.NotFoundException;
import util.json.JsonConverter;

import java.util.List;

/**
 * Created by kylin on 16/6/1.
 * All rights reserved.
 */
public class ChartImplTest {

    private ChartService stockService = new ChartImpl();
    private StockService stock2Service = new StockImpl();

    private RankImpl rank = new RankImpl();

    private String date;

    public ChartImplTest() throws NotFoundException {
    }

    @Test
    public void getAmountInADayBarchart() throws Exception {
        date = stock2Service.getLatestDate("sh600600");
        System.out.println("最近一天:"+date);
        VolumeVO vo = stockService.getAmountInADayBarchart("sh600519",date);
        System.out.println(vo.getList().size());
    }

    @Test
    public void getLineChartVO() throws Exception {
        date = stock2Service.getLatestDate("sh600600");
        System.out.println("最近一天:"+date);
        LinearChartVO linearChartVO = stockService.getLineChartVO("sh600064", date);
        List<String>strings = JsonConverter.jsonOfLinearChartVO(linearChartVO);
        for (String s:strings){
            System.out.println(s);
        }
    }

}