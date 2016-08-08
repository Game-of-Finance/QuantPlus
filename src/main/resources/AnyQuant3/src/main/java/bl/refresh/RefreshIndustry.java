package bl.refresh;

import bl.factory.BLFactory;
import bl.service.StockService;
import dao.entity.IndustryAttribute;
import dao.factory.DaoFactory;
import dao.service.IndustryService;
import data.dataservice.StockDataService;
import data.factory.DataFactory;
import model.industry.IndustryBasicInfo;
import model.industry.IndustryVOForSeven;
import model.industry.TypicalStockInfo;
import model.stock.AverageInfo;
import model.stock.StockVO;
import util.enums.IndustryPeriodEnum;
import util.exception.BadInputException;
import util.exception.NotFoundException;
import util.time.DateCount;
import util.time.TimeConvert;

import java.text.ParseException;
import java.util.*;
import java.util.stream.Collectors;

/**
 * Created by kylin on 16/6/2.
 * All rights reserved.
 */
public class RefreshIndustry {

    private StockDataService stockDataService;

    private StockService stockService;

    private IndustryService dataService;

    public RefreshIndustry(){
        this.dataService = DaoFactory.getInstance().getIndustryService();
        this.stockDataService = DataFactory.getInstance().getStockDataService();
        try {
            this.stockService = BLFactory.getInstance().getStockService();
        } catch (NotFoundException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        RefreshIndustry refreshIndustry = new RefreshIndustry();

        refreshIndustry.initAndFreshOneSeason(IndustryPeriodEnum.FOURTH);
        System.out.println(IndustryPeriodEnum.FOURTH);
        refreshIndustry.initAndFreshOneSeason(IndustryPeriodEnum.THIRD);
        System.out.println(IndustryPeriodEnum.THIRD);
        refreshIndustry.initAndFreshOneSeason(IndustryPeriodEnum.SECOND);
        System.out.println(IndustryPeriodEnum.SECOND);
    }

    private void initAndFreshOneSeason(IndustryPeriodEnum periodEnum) {
        HashMap<String, HashMap<String, String>> namesAndNumbers = stockDataService.getNamesAndNames();

        double size = namesAndNumbers.size();

        double i = 0;

        //对于所有行业
        for (Map.Entry<String, HashMap<String, String>> hashMapEntry:namesAndNumbers.entrySet()){
            System.out.println(++i/size * 100);
            String industryName = hashMapEntry.getKey();

            System.out.println("行业入口:"+industryName);

            //获取一个行业里面所有的 股票名称,代码
            HashMap<String, String> stocksInIndustry = hashMapEntry.getValue();

            //获取所有股票的代码
            List<String> numbersInIndustry = stocksInIndustry.entrySet().stream().map(Map.Entry::getValue).collect(Collectors.toList());

            System.out.println("行业大小:"+numbersInIndustry.size());
            //更新一个季度一个行业的数据
            this.initAndFreshOneIndustry(industryName,numbersInIndustry,periodEnum);
        }
    }

    public List<StockVO> getStockVOsIndustry(String industryName,IndustryPeriodEnum periodEnum){
        HashMap<String, HashMap<String, String>> namesAndNumbers = stockDataService.getNamesAndNames();
        HashMap<String, String> hashMapEntry = namesAndNumbers.get(industryName);
        //获取所有股票的代码
        List<String> numbersInIndustry = hashMapEntry.entrySet().stream().map(Map.Entry::getValue).collect(Collectors.toList());
        String startDate = IndustryPeriodEnum.getStartDate(periodEnum);
        String endDate = getEndDate(startDate);
        System.out.println("缓存行业:"+industryName);
        //新建一个行业缓存
        List<StockVO> stockVOs = new ArrayList<>();
        for (String stockNumber:numbersInIndustry) {
            //获取一只股票数据
            try {
                StockVO stockVO = stockService.getStock(stockNumber, startDate, endDate);
                stockVOs.add(stockVO);
            } catch (NotFoundException | BadInputException e) {
            }
        }
        return stockVOs;
    }

    public void initAndFreshOneIndustry(String industryName,List<String> numbers,IndustryPeriodEnum periodEnum) {

        String startDate = IndustryPeriodEnum.getStartDate(periodEnum);
        String endDate = getEndDate(startDate);
        System.out.println("缓存行业:"+industryName);

        //新建一个行业缓存
        List<StockVO> stockVOs = new ArrayList<>();

        for (String stockNumber:numbers) {
            //获取一只股票数据
            try {
                StockVO stockVO = stockService.getStock(stockNumber, startDate, endDate);
                stockVOs.add(stockVO);
            } catch (NotFoundException | BadInputException e) {
                System.out.println("股票无数据:"+stockNumber);
                System.out.println("但是我并不在乎!!!");
            }
        }
        System.out.println("缓存结束行业:"+industryName);

        //计算
        System.out.println("计算行业:"+industryName);
        IndustryVOForSeven industryVOForSeven = this.getBasicIndustryInfo(industryName,stockVOs,periodEnum);
        System.out.println("计算结束行业:"+industryName);

        //写入
        System.out.println("开始写入行业:"+industryName);
        this.refreshIndustry(industryVOForSeven);
        System.out.println("写入行业结束:"+industryName);

    }

    public IndustryVOForSeven getBasicIndustryInfo(String industryName, List<StockVO> stockVOs,
                                                   IndustryPeriodEnum period){
        if(stockVOs.size() == 0){
            return new IndustryVOForSeven(industryName,period.toString(),new IndustryBasicInfo(0,0,0,0,0,0),new TypicalStockInfo("无任何股票",0,0));
        }

        //行业指标的总和
        double totalPrice = 0;
        double totalChange = 0;
        double totalProfit = 0;
        double totalVolume = 0;
        double totalAmount = 0;

        //获得行业内股票数目
        int numberOfStocks = stockVOs.size();


        //对所有股票求和
        for (StockVO stockVO : stockVOs) {
            //得到每个股票的平均信息
            AverageInfo averageInfo = stockVO.calculateAverage();
            totalPrice += averageInfo.getAveragePrice();
            totalChange += averageInfo.getAverageChange();
            totalProfit += averageInfo.getAverageProfit();

            totalVolume += averageInfo.getTotalVolume();
            totalAmount += averageInfo.getTotalAmount();
        }
        //求所有股票的平均
        double averagePrice = totalPrice/numberOfStocks;
        double averageChange = totalChange/numberOfStocks;
        double averageProfit = totalProfit/numberOfStocks;

        IndustryBasicInfo industryBasicInfo = new IndustryBasicInfo(numberOfStocks, averagePrice,
                averageChange, averageProfit, totalVolume, totalAmount);

        //对所有股票按照季度涨幅排序
        stockVOs.sort(
                (v1,v2)->
                        v1.compareTo(v2));

        StockVO best = stockVOs.get(0);

        TypicalStockInfo typicalStockInfo = new TypicalStockInfo(best.getName(),
                best.getLatestPrice(),best.getSeasonChange());

        return new IndustryVOForSeven(industryName, period.toString(),industryBasicInfo,typicalStockInfo);
    }

    private void refreshIndustry(IndustryVOForSeven industryVO){
        System.out.println("写入行业 --------- "+industryVO.getIndustryName());

        String name = industryVO.getIndustryName();
        String time = industryVO.getSeason();

        IndustryBasicInfo industryBasicInfo = industryVO.getIndustryBasicInfo();
        String numberOfstocks = String.valueOf(industryBasicInfo.getNumberOfstocks());
        String averagePrice = String.valueOf(industryBasicInfo.getAveragePrice());
        String averageProfit = String.valueOf(industryBasicInfo.getAverageProfit());
        String averageChange = String.valueOf(industryBasicInfo.getAverageChange());

        String totalVolume = String.valueOf(industryBasicInfo.getTotalVolume());
        String totalAmount = String.valueOf(industryBasicInfo.getTotalAmount());

        TypicalStockInfo typicalStockInfo = industryVO.getTypicalStockInfo();
        String stockName = typicalStockInfo.getStockName();
        String latestPrice = String.valueOf(typicalStockInfo.getLatestPrice());
        String change = String.valueOf(typicalStockInfo.getChange());

        IndustryAttribute attribute = new IndustryAttribute();

        attribute.setIndustryName(name);
        attribute.setTime(time);

        attribute.setNumberOfstocks(numberOfstocks);
        attribute.setAveragePrice(averagePrice);
        attribute.setAverageChange(averageChange);
        attribute.setAverageProfit(averageProfit);
        attribute.setTotalVolume(totalVolume);
        attribute.setTotalAmount(totalAmount);

        attribute.setStockName(stockName);
        attribute.setLatestPrice(latestPrice);
        attribute.setPriceChange(change);

        try {
            dataService.setIndustryInfo(attribute);
        } catch (NotFoundException e) {
            e.printStackTrace();
        }
        System.out.println("写入行业 --------- 结束---------");
    }



    private String getEndDate(String startDate) {
        String endDate = "";
        try {
            Calendar end = TimeConvert.covertToCalendar(startDate);
            end.add(Calendar.MONTH, 3);
            endDate = DateCount.count(TimeConvert.getDisplayDate(end), -1);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return endDate;
    }

}
