package bl.impl;

import bl.service.IndustryService;
import data.dataservice.IndustryDataService;
import data.dataservice.StockDataService;
import data.factory.DataFactory;
import model.industry.IndustryBasicInfo;
import model.industry.IndustryVOForSeven;
import model.industry.TypicalStockInfo;
import po.IndustryPO;
import util.enums.IndustryPeriodEnum;
import util.exception.NotFoundException;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * Created by kylin on 16/4/1.
 */
public class IndustryImpl implements IndustryService {

    /**
     * 为了提高响应的数据缓存
     */
    private List<String> industryNameList;

    private IndustryDataService industryDataService;

    /**
     * 行业名称 --> 股票名称,代码 缓存
     */
    private Map<String, HashMap<String, String>> names;

    private StockDataService stockDataService;

    public IndustryImpl() throws NotFoundException {
        this.industryDataService = DataFactory.getInstance().getIndustryDataService();
    }


    @Override
    public String getIndustryName(String num) throws NotFoundException {
        this.init();
        for (Map.Entry<String, HashMap<String, String>> industry : this.names.entrySet()) {
            //一个行业
            String industryName = industry.getKey();

            //行业内股票
            for (Map.Entry<String, String> entry : industry.getValue().entrySet()) {
                String stockName = entry.getKey();
                //编号在后
                String stockNumber = entry.getValue();
                //发现股票编号
                if (stockNumber.equalsIgnoreCase(num))
                    return industryName;
            }
        }
        throw new NotFoundException(num+" 没有对应的行业信息");
    }

    @Override
    public List<String> getAllIndustry() {
        this.init();
        return industryNameList;
    }

    @Override
    public IndustryVOForSeven getBasicIndustryInfo(String industryName, IndustryPeriodEnum period) throws NotFoundException {
        this.init();
        IndustryPO po = this.industryDataService.getIndustry(industryName, period);

        IndustryBasicInfo industryBasicInfo = new IndustryBasicInfo(
                po.getNumberOfstocks(), po.getAveragePrice(), po.getAverageChange(),
                po.getAverageProfit(), po.getTotalVolume(), po.getTotalAmount());

        TypicalStockInfo typicalStockInfo = new TypicalStockInfo(po.getStockName(),
                po.getLatestPrice(), po.getChange());

        return new IndustryVOForSeven(po.getIndustryName(), period.toString(), industryBasicInfo, typicalStockInfo);
    }

    private void init() {
        if (this.stockDataService == null) {
            this.stockDataService = DataFactory.getInstance().getStockDataService();
            //只调用一次数据层接口
            this.names = stockDataService.getNamesAndNames();
            //转换为所有行业的名称
            this.industryNameList = this.names.entrySet().stream().map(Map.Entry::getKey).collect(Collectors.toList());
        }
    }


    //下面是被俺们抛弃的迭代二的代码////////////////


//    @Override
//    public LinearChartVO getIndustryPrice(String industryName, IndustryPeriodEnum period) throws NotFoundException {
//        String startDate = IndustryPeriodEnum.getStartDate(period);
//
//        LinearChartVO linearChartVO = null;
//        List<MyChartSeries> chartSerie = new ArrayList<>();
//
//        for (int i = 0; i < industryNameList.size(); i++) {
//            //get industry
//            if (industryNameList.get(i).getName().equals(industryName)) {
//                HashMap<String, Double> xyItem = new HashMap<>();
//                Industry industry = industryNameList.get(i);
//                List<StockVO> stockVOs = industry.getStocks();
//                //以行业中的第一只股票所含天数作为标准
//                StockVO stock = stockVOs.get(0);
//                double upper = 0;
//                double lower = 0;
//
//                for (int day = 0; day < stock.getAttributes().size(); day++) {
//                    //每一天的行业价格=行业中所有股票当天收盘价的平均值
//                    double sumOfClose = 0;
//                    for (int j = 0; j < stockVOs.size(); j++) {
//                        sumOfClose = sumOfClose + Double.valueOf(stockVOs.get(j).getAttributes().get(day).getAttribute(SomeConstant.field.close));
//                    }
//                    double close = sumOfClose / stockVOs.size();
//                    if (day == 0) {
//                        upper = close;
//                        lower = close;
//                    } else {
//                        if (upper < close) {
//                            upper = close;
//                        }
//                        if (lower > close) {
//                            lower = close;
//                        }
//                    }
//                    xyItem.put(stock.getAttributes().get(day).getDate(), close);
//                }
//
//                MyChartSeries myChartSeries = new MyChartSeries("行业均价", xyItem);
//
//                chartSerie.add(myChartSeries);
//                linearChartVO = new LinearChartVO(LinearChartType.INDUSTRY, chartSerie, upper, lower);
//
//            }
//
//        }
//        return linearChartVO;
//    }

//    @Override
//    public LinearChartVO getCompareLinearChartVO(String industryName, IndustryPeriodEnum period) throws NotFoundException, BadInputException {
//        String startDate = IndustryPeriodEnum.getStartDate(period);
//        String endDate = getEndDate(startDate);
//        StockPO benchmarkPO = this.marketDataService.getBenchmark("hs300");
//        StockVO benchmark = new StockVO(benchmarkPO, startDate, endDate, StockConstant.AllFields);
//
//        List<MyChartSeries> myChartSeries = new ArrayList<>();
//
//        for (int i = 0; i < industryNameList.size(); i++) {
//            if (industryNameList.get(i).getName().equals(industryName)) {
//
//                HashMap<String, Double> xyItem1 = new HashMap<>();
//                HashMap<String, Double> xyItem2 = new HashMap<>();
//
//                Industry industry = industryNameList.get(i);
//                List<StockVO> stockVOs = industry.getStocks();
//                int minDay = benchmark.getAttributes().size();
//                //以行业中的股票所含最少的天数作为标准
//                for (StockVO stockVO : stockVOs) {
//                    if (stockVO.getAttributes().size() < minDay) {
//                        minDay = stockVO.getAttributes().size();
//                    }
//                }
//                StockVO stock = stockVOs.get(0);
//                double upper = 0;
//                double lower = 0;
//                for (int day = 1; day < minDay; day++) {
//                    //行业每天的涨跌幅
//                    double sumOfChange = 0;
//                    for (int j = 0; j < stockVOs.size(); j++) {
//                        double startClose = Double.valueOf(stockVOs.get(j).getAttributes().get(day - 1).getAttribute().get(SomeConstant.field.close));
//                        double endClose = Double.valueOf(stockVOs.get(j).getAttributes().get(day).getAttribute().get(SomeConstant.field.close));
//                        sumOfChange = sumOfChange + (endClose - startClose) / startClose * 100;
//                    }
//                    double industryChange = sumOfChange / stockVOs.size();
//                    //大盘每天的涨跌幅
//                    double benchmarkStart = Double.valueOf(benchmark.getAttributes().get(day - 1).getAttribute().get(SomeConstant.field.close));
//                    double benchmarkEnd = Double.valueOf(benchmark.getAttributes().get(day).getAttribute().get(SomeConstant.field.close));
//                    double benchmarkChange = (benchmarkEnd - benchmarkStart) / benchmarkStart * 100;
//
//                    //判断上界和下界
//                    double change;
//                    if (benchmarkChange < industryChange) {
//                        change = industryChange;
//                    } else {
//                        change = benchmarkChange;
//                    }
//                    if (day == 0) {
//                        upper = change;
//                        lower = change;
//                    } else {
//                        if (upper < change)
//                            upper = change;
//                        if (lower > change)
//                            lower = change;
//                    }
//
//                    //获得数据列
//                    String dates = stock.getAttributes().get(day).getDate();
//                    xyItem1.put(dates, industryChange);
//                    xyItem2.put(dates, benchmarkChange);
//                }
//
//                MyChartSeries series1 = new MyChartSeries("行业", xyItem1);
//                MyChartSeries series2 = new MyChartSeries("大盘", xyItem2);
//
//                myChartSeries.add(series1);
//                myChartSeries.add(series2);
//
//                return new LinearChartVO(LinearChartType.INDUSTRY_COMPARE, myChartSeries, upper, lower);
//            }
//        }
//        throw new NotFoundException("您输入的行业不存在!");
//    }
//
//    @Override
//    public VolumeVO getIndustryVolume(String industryName, IndustryPeriodEnum period) throws NotFoundException {
//        String startDate = IndustryPeriodEnum.getStartDate(period);
//        ArrayList<VolumeChartVO> volumeChartVOs = new ArrayList<>();
//
//        for (int i = 0; i < industryNameList.size(); i++) {
//            if (industryNameList.get(i).getName().equals(industryName)) {
//                Industry industry = industryNameList.get(i);
//                List<StockVO> stockVOs = industry.getStocks();
//                //以行业中的第一只股票所含天数作为标准
//                StockVO stock = stockVOs.get(0);
//                for (int day = 0; day < stock.getAttributes().size(); day++) {
//                    //每一天的行业成交量=行业中所有股票当天成交量的平均值
//                    double sumOfVolume = 0;
//                    for (int j = 0; j < stockVOs.size(); j++) {
//                        sumOfVolume = sumOfVolume + Double.valueOf(stockVOs.get(j).getAttributes().get(day).getAttribute(SomeConstant.field.volume)) / 10000;
//                    }
//                    sumOfVolume = sumOfVolume / stockVOs.size();
//                    VolumeChartVO volumeChartVO = new VolumeChartVO(PeriodEnum.DAY, stock.getAttributes().get(day).getDate(), sumOfVolume);
//                    volumeChartVOs.add(volumeChartVO);
//                }
//                VolumeVO industryVolumeVO = new VolumeVO(volumeChartVOs, TypeOfVolumn.INDUSTRY);
//                return industryVolumeVO;
//            }
//        }
//        throw new NotFoundException("您输入的行业不存在!");
//    }


}