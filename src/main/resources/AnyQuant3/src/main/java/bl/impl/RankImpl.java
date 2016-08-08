package bl.impl;

import bl.service.RankService;
import data.dataservice.StockDataService;
import data.factory.DataFactory;
import model.analyse.RiseAndFallVO;
import model.stock.OneDayInfo;
import model.stock.StockAttribute;

import java.util.*;
import java.util.stream.Collectors;

/**
 * Created by kylin on 16/6/4.
 * All rights reserved.
 */
public class RankImpl implements RankService {

    /**
     * 为了提高响应的数据缓存
     */
    private List<String> industryNameList;

    /**
     * 行业名称 --> 股票名称,代码 缓存
     */
    private Map<String, HashMap<String, String>> indusAndStockName;


    /**
     * 所有股票最近一天的数据
     */
    private List<OneDayInfo> stockOneDay;
    private Map<String, StockAttribute> stockNameAndAttr;
    private StockDataService stockDataService;

    /**
     * 所有 行业 --> 行业内部股票涨跌幅排行
     */
    private Map<String, List<RiseAndFallVO>> indusAndStockRiseList;


    private List<RiseAndFallVO> industryRiseList;

    public RankImpl(){
        this.initFields();
        this.initAllRiseList();
    }

    @Override
    public List<RiseAndFallVO> getStockRiseList() {
        //如果没有计算过
        this.initFields();
        this.initAllRiseList();

        //排行数据计算结果缓存
        List<RiseAndFallVO> allStockRiseList = new ArrayList<>();
        //将已经计算好的所有行业内部股票排行数据,加入全体股票数据
        for (Map.Entry<String, List<RiseAndFallVO>> oneIndustry : indusAndStockRiseList.entrySet()) {
            allStockRiseList.addAll(oneIndustry.getValue());
        }

        allStockRiseList.sort((v1, v2)->v1.compareTo(v2));
        return allStockRiseList;
    }

    @Override
    public List<OneDayInfo> getStockRiseList(String indusName) {
        this.initFields();
        this.initAllRiseList();
        String date = this.stockOneDay.get(0).getDate();

        assert (indusAndStockRiseList != null);
        assert (stockNameAndAttr != null);

        //从缓存数据中获取目标行业内,所有的股票
        if(!this.indusAndStockRiseList.containsKey(indusName)){
            return new ArrayList<>();
        }
        List<RiseAndFallVO> thisIndustry = this.indusAndStockRiseList.get(indusName);
        this.sortRiseList(thisIndustry);

        List<OneDayInfo> result = new ArrayList<>();
        //遍历股票排行,添加数据
        for (RiseAndFallVO oneStockInIndustry : thisIndustry) {
            String stockName = oneStockInIndustry.getName();

            if( this.stockNameAndAttr.containsKey(stockName) ) {
                StockAttribute stockAttribute = this.stockNameAndAttr.get(stockName);
                OneDayInfo oneDayInfo = new OneDayInfo(date, stockAttribute.getAttribute(), oneStockInIndustry.getName());
                result.add(oneDayInfo);
            }
        }
        return result;
    }


    @Override
    public List<RiseAndFallVO> getIndustryRiseList() {
        this.initFields();
        this.initAllRiseList();
        assert (industryRiseList != null);
        return industryRiseList;
    }


    private void sortRiseList(List<RiseAndFallVO> list) {
        this.initFields();
        this.initAllRiseList();
        list.sort((v1,v2)->v1.compareTo(v2));
    }

    private void calculateRiseList() {
        //行业 --> 行业内部股票涨跌幅排行
        this.indusAndStockRiseList = new HashMap<>();
        //所有行业涨跌幅排行
        this.industryRiseList = new ArrayList<>();
        //所有股票名称 --> 昨日属性
        this.stockNameAndAttr = new HashMap<>();
        //对从数据库中取出的所有数据缓存,以便计算的时候快速存取
        for (OneDayInfo oneDayInfo : stockOneDay) {
            //从OneDayInfo创建StockAttribute
            stockNameAndAttr.put(oneDayInfo.getName(),
                    new StockAttribute( oneDayInfo.getDate(), oneDayInfo.getAttribute() ) );
        }

        //对于每一个行业
        for (String oneIndusName : this.industryNameList) {
            //行业内的股票名称-->代码
            HashMap<String, String> nameAndNumber = this.indusAndStockName.get(oneIndusName);
            //这个行业所有的股票名称
            Set<String> stockNames = nameAndNumber.keySet();
            int indusSize = nameAndNumber.size();

            List<RiseAndFallVO> stockInIndustry = new ArrayList<>();
            double indusRise = 0;

            //对于每一个股票
            for (String stockName : stockNames) {
                //如果行业内这个股票存在
                if(stockNameAndAttr.containsKey(stockName)){
                    StockAttribute oneStock = stockNameAndAttr.get(stockName);
                    //获取一个股票的涨跌幅情况
                    double stockChange = oneStock.getChange();
                    stockInIndustry.add(new RiseAndFallVO(stockName, stockChange));
                    //行业涨跌幅求和
                    indusRise += stockChange;
                }
            }
            //添加一个行业的涨跌幅
            indusRise = indusRise / indusSize;
            industryRiseList.add(new RiseAndFallVO(oneIndusName, indusRise));
            //添加一个行业内部,所有股票的涨跌幅
            indusAndStockRiseList.put(oneIndusName, stockInIndustry);
        }

        //行业涨跌幅排行
        this.sortRiseList(industryRiseList);
    }


    //如果没有初始化则初始化一次
    private void initAllRiseList() {
        if (industryRiseList == null ||
                this.indusAndStockRiseList == null || this.stockNameAndAttr == null) {
            //计算所有行业内部的股票涨幅排行
            this.calculateRiseList();
        }
    }

    private void initFields(){
        if(this.stockDataService == null){
            //只调用一次数据层接口
            this.stockDataService = DataFactory.getInstance().getStockDataService();
            this.indusAndStockName = stockDataService.getNamesAndNames();
            this.stockOneDay = stockDataService.getLatest();

            //转换为所有行业的名称
            this.industryNameList = this.indusAndStockName.entrySet().stream().map(Map.Entry::getKey).collect(Collectors.toList());
        }
    }
}
