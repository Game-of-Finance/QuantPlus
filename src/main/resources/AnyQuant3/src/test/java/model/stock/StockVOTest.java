package model.stock;

import bl.impl.StockImpl;
import bl.service.StockService;
import org.junit.Test;
import util.constant.StockConstant;
import util.exception.BadInputException;
import util.exception.NotFoundException;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Created by kylin on 16/5/21.
 */
public class StockVOTest {

    private StockService stockService = new StockImpl();

    public StockVOTest() throws NotFoundException {
    }

    @Test
    public void getAttributes()  {
        StockVO stockVOBig = null;
        try {
            stockVOBig = stockService.getStock("sh600519","2016-01-01","2016-05-05", StockConstant.AllFields,null);
        } catch (NotFoundException e) {
            e.printStackTrace();
        } catch (BadInputException e) {
            e.printStackTrace();
        }
        List<StockAttribute> samll = null;
        try {
            samll = stockVOBig.getAttributes("2016-03-03","2016-04-04");
            System.out.println(samll.size());
        } catch (BadInputException e) {
            e.printStackTrace();
        }

    }
    @Test
    public void getAverage() throws NotFoundException, BadInputException {
        StockVO stockVOBig = stockService.getStock("sh600519","2016-01-01","2016-05-05", StockConstant.AllFields,null);
        AverageInfo averageInfo = stockVOBig.calculateAverage();
        System.out.println(averageInfo.getAverageChange());
        System.out.println(averageInfo.getAveragePrice());
        System.out.println(averageInfo.getAverageProfit());
        System.out.println(averageInfo.getTotalVolume());
        System.out.println(averageInfo.getTotalAmount());
    }

    @Test
    public void getRank() throws NotFoundException, BadInputException {
        StockVO stockVOBig1 = stockService.getStock("sh600519","2016-01-01","2016-05-05", StockConstant.AllFields,null);
        StockVO stockVOBig2 = stockService.getStock("sh600600","2016-01-01","2016-05-05", StockConstant.AllFields,null);
        StockVO stockVOBig3 = stockService.getStock("sh600900","2016-01-01","2016-05-05", StockConstant.AllFields,null);

        System.out.println(stockVOBig1.compareTo(stockVOBig2));
        System.out.println(stockVOBig1.compareTo(stockVOBig3));

        List<StockVO> list = new ArrayList<>();
        list.add(stockVOBig1);
        list.add(stockVOBig2);
        list.add(stockVOBig3);

        Collections.sort(list, StockVO::compareTo);
        StockVO best = list.get(0);



        System.out.println(best.getName());
    }


}