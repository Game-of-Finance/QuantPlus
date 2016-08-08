package util.math.season;

import bl.service.StockService;
import model.stock.StockAttribute;
import model.stock.StockVO;
import util.constant.StockConstant;
import util.enums.AttributeEnum;
import util.exception.BadInputException;
import util.exception.NotFoundException;
import util.time.DateCount;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

/**
 * Created by JiachenWang on 2016/5/30.
 */
public class SeasonPredict {

    StockService stockService;

    StockVO stock;
    ArrayList SeasonList;

    public SeasonPredict(StockService stockService) {
        this.stockService = stockService;
        SeasonList = new ArrayList();
        HashMap temp = new HashMap();
        temp.put("SEASON","Y1");
        temp.put("SEASON_INDEX","1");
        SeasonList.add(0,temp);
        temp = new HashMap();
        temp.put("SEASON","Y2");
        temp.put("SEASON_INDEX","1");
        SeasonList.add(1,temp);
        temp = new HashMap();
        temp.put("SEASON","Y3");
        temp.put("SEASON_INDEX","1");
        SeasonList.add(2,temp);
        temp = new HashMap();
        temp.put("SEASON","Y4");
        temp.put("SEASON_INDEX","1");
        SeasonList.add(3,temp);
    }

    /**
     * 预测季度平均价格
     * @param num 股票编号
     * @param year 年份
     * @param season_index 第几季度
     * @return 预测结果
     */
    public double avgPricePredict(String num, String year, int season_index){
        int ptr_year = 2013;
        int ptr_season = 1;
        int count =0;

        try {
            stock = stockService.getStock(num, StockConstant.STOCK_INFO_START, DateCount.dateToStr(new Date())
                    , AttributeEnum.CLOSE.getEN() + "+" + AttributeEnum.OPEN.getEN(), null);
        } catch (NotFoundException e) {
            e.printStackTrace();
        } catch (BadInputException e) {
            e.printStackTrace();
        }

        ArrayList seasonSample = new ArrayList();


        while(!year.equalsIgnoreCase(""+ptr_year)||season_index!=ptr_season){
            List<StockAttribute> list = getAttributeList(ptr_year + "", ptr_season);
            seasonSample.add(count, getAvgPrice(list, ptr_year + "", ptr_season));
            if (ptr_season<4)
                ptr_season++;
            else {
                ptr_season = 1;
                ptr_year ++;
            }

        }
        return TimeSerial.seasonTimeSerialForecast(seasonSample,SeasonList,year,"Y" + season_index);
    }

    /**
     *  预测每个工作日平均成交量
     * @param num 股票编号
     * @param year 年份
     * @param season_index 第几季度
     * @return 预测结果
     */
    public double volumnPredict(String num, String year, int season_index){
        int ptr_year = 2013;
        int ptr_season = 1;
        int count =0;

        try {
            stock = stockService.getStock(num, StockConstant.STOCK_INFO_START, DateCount.dateToStr(new Date())
                    , AttributeEnum.VOLUME.getEN(), null);
        } catch (NotFoundException e) {
            e.printStackTrace();
        } catch (BadInputException e) {
            e.printStackTrace();
        }

        ArrayList seasonSample = new ArrayList();


        while(!year.equalsIgnoreCase(""+ptr_year)||season_index!=ptr_season){
            List<StockAttribute> list = getAttributeList(ptr_year + "", ptr_season);
            seasonSample.add(count, getVolumn(list, ptr_year + "", ptr_season));
            if (ptr_season<4)
                ptr_season++;
            else {
                ptr_season = 1;
                ptr_year ++;
            }

        }

        return TimeSerial.seasonTimeSerialForecast(seasonSample,SeasonList,year,"Y" + season_index);
    }

    private List<StockAttribute> getAttributeList(String year, int season_index){
        List<StockAttribute> result = null;
        String start = "";
        String end = "";
        switch (season_index){
            case 1:start = year + "-" + "01-01";end = year + "-" + "03-31";break;
            case 2:start = year + "-" + "04-01";end = year + "-" + "06-30";break;
            case 3:start = year + "-" + "07-01";end = year + "-" + "09-30";break;
            case 4:start = year + "-" + "10-01";end = year + "-" + "12-31";break;
            default:start = year + "-" + "01-01";end = year + "-" + "03-31";break;
        }
        try {
            result =  stock.getAttributes(start, end);
        } catch (BadInputException e) {
            System.err.print("输入有误" + start + "---" + end);
            e.printStackTrace();
        }
        return result;
    }

    private HashMap getAvgPrice(List<StockAttribute> attrs, String year, int season_index){
        double value = 0;
        for (StockAttribute attr : attrs) {
            value += (attr.getClose() + attr.getOpen()) / 2.0;
        }
        value = value / (attrs.size() + 0.0);
        HashMap map = new HashMap();
        map.put("PERIOD",year + "");
        map.put("SEASON","Y" + season_index);
        map.put("VALUE",value + "");
        return map;
    }

    private HashMap getVolumn(List<StockAttribute> attrs, String year, int season_index){
        double value = 0;
        double size = 0;
        for (StockAttribute attr : attrs) {
            value += attr.getVolume();
            if (attr.getVolume()!=0.0)
                size++;
        }

        value = value / (size + 0.0);
        HashMap map = new HashMap();
        map.put("PERIOD",year + "");
        map.put("SEASON","Y" + season_index);
        map.put("VALUE",value + "");
        return map;
    }

}
