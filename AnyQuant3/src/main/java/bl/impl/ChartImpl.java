package bl.impl;

import bl.service.ChartService;
import data.dataservice.AnalysisDataService;
import data.factory.DataFactory;
import model.barchart.VolumeChartVO;
import model.barchart.VolumeVO;
import model.common.LinearChartVO;
import model.common.MyChartSeries;
import model.common.StockPriceInfo;
import po.TradeInfoPO;
import util.enums.LinearChartType;
import util.enums.PeriodEnum;
import util.enums.TypeOfVolumn;
import util.exception.NotFoundException;
import util.math.NumberFormater;
import util.time.TimeConvert;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * Created by kylin on 16/6/1.
 * All rights reserved.
 */
public class ChartImpl implements ChartService {


    private AnalysisDataService analysisDataService;

    public ChartImpl() {
        analysisDataService = DataFactory.getInstance().getAnalysisDataService();
    }

    @Override
    //唯一一个会调用数据层AnalysisDataService getTradeInfo  指定股票代码的一个工作日的详细交易情况
    //的地方
    public LinearChartVO getLineChartVO(String number, String date) throws NotFoundException {

        StockPriceInfo stockPriceInfo = this.getTradeInfoVO(number, date);

        // get info form vo
        HashMap<String, Double> timeAndPrice = stockPriceInfo.getTimeAndPrice();
        HashMap<String, Double> timeAndAccumulatePrice = stockPriceInfo.getTimeAndAccumlatePrice();

        List<String> validSeconds = TimeConvert.getSecondsInTrade(1);

        HashMap<String, Double> xyItem1 = new HashMap<>();
        HashMap<String, Double> xyItem2 = new HashMap<>();

        int stepIndex = 0;
        int step = 20;

        for (String oneSecond : validSeconds) {
            // 如果这一秒存在数据
            if (stockPriceInfo.timeGotInfo(oneSecond)) {
                stepIndex++;
                // 间隔获取数据,不显示所有秒的所有数据
                if (stepIndex % step == 0) {
                    double price = timeAndPrice.get(oneSecond);
                    double accuPrice = timeAndAccumulatePrice.get(oneSecond);
                    xyItem1.put(oneSecond, price);
                    xyItem2.put(oneSecond, NumberFormater.cutDouble(accuPrice,2));
                }
            }
        }

        double high = stockPriceInfo.getHighest();
        double low = stockPriceInfo.getLowest();
        double stepx = (high - low);

        double lowBound = low - stepx * 0.15;
        double upBound = high + stepx * 0.15;

        MyChartSeries series1 = new MyChartSeries("即时价格", xyItem1);
        MyChartSeries series2 = new MyChartSeries("累计均价", xyItem2);

        List<MyChartSeries> myChartSeries = new ArrayList<>();
        myChartSeries.add(series1);
        myChartSeries.add(series2);

        return new LinearChartVO(LinearChartType.STOCK, myChartSeries, upBound, lowBound);
    }


    @Override
    public VolumeVO getAmountInADayBarchart(String number, String date) throws NotFoundException {
        //获取每一秒的时间与金额
        TradeInfoPO tradeInfoPO = this.analysisDataService.getTradeInfo(number, date);
        StockPriceInfo stockPriceInfo = tradeInfoPO.getPriceInfoVOFromTradeInfoPO(tradeInfoPO);
        HashMap<String, Double> timeAndAmount = stockPriceInfo.getTimeAndVolume();

        //添加间隔一定秒数的数据
        ArrayList<VolumeChartVO> volumeChartVOs = new ArrayList<>();

        List<String> validSeconds = TimeConvert.getSecondsInTrade(1);

        int stepIndex = 0;
        int step = 20;

        for (String oneSecond : validSeconds) {
            // 如果这一秒存在数据
            if (stockPriceInfo.timeGotInfo(oneSecond)) {
                stepIndex++;
                // 间隔获取数据,不显示所有秒的所有数据
                if (stepIndex % step == 0) {
                    double amount = timeAndAmount.get(oneSecond);
                    VolumeChartVO vo = new VolumeChartVO(PeriodEnum.SECOND, oneSecond, (int) amount);
                    volumeChartVOs.add(vo);
                }
            }
        }

        VolumeVO volumeVO = new VolumeVO(volumeChartVOs, TypeOfVolumn.INDUSTRY);
        volumeVO.setLabelInfo("分时成交量统计图", "时间", "成交量/手");

        return volumeVO;
    }


    private StockPriceInfo getTradeInfoVO(String number, String date) throws NotFoundException {
        TradeInfoPO tradeInfoPO = this.analysisDataService.getTradeInfo(number, date);
        return tradeInfoPO.getPriceInfoVOFromTradeInfoPO(tradeInfoPO);
    }


}
