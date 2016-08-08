package controller;

import bl.tool.StockStub;
import bl.service.StockService;
import model.stock.StockVO;
import org.junit.Test;
import util.constant.StockConstant;
import util.exception.NotFoundException;
import util.time.DateCount;

import java.util.Date;

/**
 * Created by kylin on 16/5/20.
 */
public class MainControllerTest {

    private StockService stockService = new StockStub();

    public MainControllerTest() throws NotFoundException {
    }

    @Test
    public void index() throws Exception {

    }

    @Test
    public void getStock() throws Exception {
        Date today = new Date();
        String endDate = DateCount.dateToStr(today);
        System.out.println(endDate);
        String startDate = DateCount.count(endDate, -100);
        System.out.println(startDate);
//获取StockVO
        StockVO stockVO = stockService.getStock(
                "sh600519", startDate, endDate, StockConstant.AllFields, null);
        System.out.println(stockVO.numberOfDays());
    }

}