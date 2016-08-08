package bl.impl;

import bl.service.MarketService;
import com.fasterxml.jackson.core.JsonProcessingException;
import data.dataservice.MarketDataService;
import data.dataservice.StockDataService;
import data.factory.DataFactory;
import model.market.MarketVO;
import model.stock.OneDayInfo;
import model.stock.StockAttribute;
import model.stock.StockVO;
import po.StockPO;
import util.constant.ControllerValue;
import util.constant.StockConstant;
import util.exception.NotFoundException;
import util.json.JsonConverter;
import util.math.NumberFormater;

import java.util.*;

/**
 * Created by kylin on 16/6/1.
 * All rights reserved.
 */
public class MarketImpl implements MarketService {

    private MarketDataService dataService;

    private StockDataService stockDataService;

    private String shAndSz = "hs300";

    private String SHKey = "sh";

    private String SZKey = "sz";

    private HashMap<String, String> nameAndNumber;
    private List<OneDayInfo> shangHaiStock;
    private List<OneDayInfo> shenZhenStock;

    public MarketImpl() {
        stockDataService = DataFactory.getInstance().getStockDataService();
        dataService = DataFactory.getInstance().getMarketDataService();
    }

    @Override
    public List<OneDayInfo> getStockInMarket(String marketName) {
        List<OneDayInfo> dayInfos = stockDataService.getLatest();


        //只调用一次数据层接口,分大盘缓存数据
        if (this.nameAndNumber == null ||
                this.shangHaiStock == null || this.shenZhenStock == null) {
            this.nameAndNumber = stockDataService.getStockNameAndNumber();
            this.shangHaiStock = new ArrayList<>();
            this.shenZhenStock = new ArrayList<>();

            //对于两个大盘的所有股票
            for (OneDayInfo oneStock : dayInfos) {
                String name = oneStock.getName();
                String number = this.nameAndNumber.get(name);

                //按照大盘分类
                if (number.contains(SHKey)) {
                    this.shangHaiStock.add(oneStock);
                } else if (number.contains(SZKey)) {
                    this.shenZhenStock.add(oneStock);
                }
            }
        }

        if (marketName.equals(StockConstant.SH_MARKET)) {
            return this.shangHaiStock;
            //深圳
        } else if (marketName.equals(StockConstant.SZ_MARKET)) {
            return this.shenZhenStock;
        }
        return dayInfos;
    }

    @Override
    public MarketVO getMarket(String marketNumber) throws NotFoundException, JsonProcessingException {
        MarketVO marketVO;
        StockPO po = dataService.getBenchmark(marketNumber);
        //获取大盘名称
        String marketName = this.getMarketName(marketNumber);

        //获取大盘一定时间的数据
        StockVO stockVO = new StockVO(po, ControllerValue.startDate, ControllerValue.today);
        //K线图
        String json = JsonConverter.jsonKlinearOfVO(stockVO);
        //最近一天的数据
        StockAttribute lastDay = stockVO.getLastAttr();

        String analyse = this.analyse(stockVO,marketNumber);

        //返回结果
        marketVO = new MarketVO(marketName, json, analyse, lastDay);
        return marketVO;
    }

    /**
     * 分析大盘信息
     * @param marketVO
     * @return
     */
    private String analyse(StockVO marketVO,String marketNumber){
        StringBuilder builder = new StringBuilder();
        if(marketNumber.equals(this.SHKey)){
            builder.append("上证综合指数 :").
                    append(marketNumber).
                    append(" 的样本股是全部上市股票，包括A股和B股，").
                    append("从总体上反映了上海证券交易所上市股票价格的变动情况。\n");
        }else if(marketNumber.equals(this.SZKey)){
            builder.append("深证成指 :").append(marketNumber)
                    .append(" 是由上海和深圳证券市场中选取300只A股作为样本编制而成的成份股指数").
                    append("覆盖了沪深市场六成左右的市值，具有良好的市场代表性。\n");
        }else {
            builder.append("沪深300指数 :").append(marketNumber)
                    .append(" 是深圳证券交易所编制的一种成份股指数，是从上市的所有股票中抽取具有市场代表性的40家上市公司的股票作为计算对象，" +
                            "并以流通股为权数计算得出的加权股价指数，综合反映深交所上市A、B股的股价走势。\n");
        }
        double change = marketVO.getLatestChange();
        double price = marketVO.getLatestPrice();
        builder.append("今收:").append(NumberFormater.cutDouble(price, 2));
        builder.append(",涨幅:").append(NumberFormater.formatPercent(change));
        return builder.toString();
    }

    private String getMarketName(String marketNumber) {
        //名称 + 编号的map
        HashMap<String, String> hashMap = dataService.getAllBenchmark();
        Set<Map.Entry<String, String>> entries = hashMap.entrySet();
        //遍历map
        for (Map.Entry<String, String> entry : entries) {
            String name = entry.getKey();
            String number = entry.getValue();
            //找到
            if (marketNumber.equals(number)) {
                return name;
            }
        }
        //找不到,就返回综合指数
        return "沪深300指数";
    }

    @Override
    public String marketNumber(String stockNumber) {
        String shanghai = SHKey;
        String shenzhen = SZKey;

        if (stockNumber.startsWith("sh")
                || stockNumber.startsWith("60")
                || stockNumber.startsWith("70")
                || stockNumber.startsWith("73")
                || stockNumber.startsWith("90")) {
            return shanghai;

        } else if (stockNumber.startsWith("sz")
                || stockNumber.startsWith("00")
                || stockNumber.startsWith("080")
                || stockNumber.startsWith("30")) {
            return shenzhen;

        } else
            return shAndSz;

    }

}
