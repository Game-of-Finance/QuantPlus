package controller;

import bl.impl.StockImpl;
import bl.service.StockService;
import model.stock.OneDayInfo;
import model.stock.StockAttribute;
import model.stock.StockVO;
import org.junit.Test;
import util.exception.NotFoundException;
import util.time.DateCount;

/**
 * Created by kylin on 16/5/30.
 * All rights reserved.
 */
public class StockControllerTest {

    private StockService stockService;

    public StockControllerTest() throws NotFoundException {
        stockService = new StockImpl();
    }

    @Test
    public void getStock() throws Exception {
        String today = DateCount.getToday();
        String startDate = DateCount.count(today, -300);
        StockVO stockVO = stockService.getStock("sh600519", startDate, today);
        String oneDay = "2016-05-04";


//
//        StockAttribute attribute2 = stockVO.getAttrAtDay("2016-05-04");
//        System.out.println(attribute2.getDate());
//        System.out.println(attribute2.getOpen());
//
//        StockAttribute attribute1 = stockVO.getAttrAtDay("2016-05-24");
//        System.out.println(attribute1.getDate());
//        System.out.println(attribute1.getOpen());


        StockAttribute attribute = stockVO.getLastAttr();
        OneDayInfo oneDayInfo = new OneDayInfo(oneDay,attribute.getAttribute(),stockVO.getName());
        System.out.println(oneDayInfo == null);
        System.out.println(oneDayInfo.getDate());
        System.out.println(oneDayInfo.getOpen());
        System.out.println(oneDayInfo.getName());
    }

}