package bl.impl;

import bl.service.StockService;
import model.stock.OneDayInfo;
import model.stock.StockAttribute;
import model.stock.StockVO;
import org.junit.Test;
import util.constant.ControllerValue;
import util.constant.StockConstant;
import util.exception.BadInputException;
import util.exception.NotFoundException;
import util.time.DateCount;

/**
 * Created by kylin on 16/5/19.
 */
public class GetStockImplTest {

    private StockService stockService = new StockImpl();

    public GetStockImplTest() throws NotFoundException {
    }

    @Test
    public void initial() throws Exception {

    }
    @Test
    public void getLastOne() throws Exception {
        OneDayInfo oneDayInfo = stockService.getLatestOneDay("sh600600");
        System.out.println(oneDayInfo.getName());
        System.out.println(oneDayInfo.getDate());
        System.out.println(oneDayInfo.getOpen());
    }


    @Test
    public void getStockName() throws Exception {
        stockService.getStockName("sh600519");
    }

    @Test
    public void getStock() throws Exception {
//        StockVO stockVO = stockService.getStock("sh600600","2016-01-01","2016-05-05", StockConstant.AllFields,null);
//        System.out.println(stockVO.getName());
//        System.out.println(stockVO.getAttributes().size());

        String today = DateCount.getToday();
        String startDate = DateCount.count(today, -300);
        StockVO stockVO = stockService.getStock("sh600600", startDate, today);


        for (StockAttribute attribute:stockVO.getAttributes()){
            System.out.println(attribute.getDate());
            System.out.println(attribute.getOpen());
            System.out.println(attribute.getAmount());
            System.out.println(attribute.getAttribute("open"));
        }


        String latestWorkDay = "2016-05-04";
        StockAttribute attribute = stockVO.getLastAttr();

        System.out.println(attribute.getDate());
        System.out.println(attribute.getOpen());

        OneDayInfo oneDayInfo = new OneDayInfo(latestWorkDay,
                attribute.getAttribute(),stockVO.getName());
        System.out.println(oneDayInfo.getDate());
        System.out.println(oneDayInfo.getOpen());

//        System.out.println(stockVO.getName());
//        System.out.println(stockVO.getAttributes().size());
//        for (StockAttribute day:stockVO.getAttributes()){
//            System.out.println(day.getDate());
//            System.out.println(day.getOpen());
//        }
    }

    @Test
    public void getLastestStock() throws Exception {
        StockVO vo = stockService.getLatestStock("sh600519",15, StockConstant.AllFields,null);
        System.out.println(vo.numberOfDays());
    }

    @Test
    public void getNameTonumber() throws Exception {
        String ss = stockService.getStockNumber("青岛啤酒");
        System.out.println(ss);
    }




    @Test
    public void test() throws NotFoundException, BadInputException {
        StockVO stockVO = stockService.getStock("sh600519",
                ControllerValue.startDate,
                ControllerValue.today,
                StockConstant.AllFields, null);
        System.out.println(stockVO.getName());
        System.out.println(stockVO.getAttributes().size());

        StockAttribute last = stockVO.getLastAttr();
        System.out.println(last.getDate());
        System.out.println(last.getOpen());
    }
}