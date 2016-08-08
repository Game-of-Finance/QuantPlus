package controller;

import bl.analyse.accuracy.AccuracyService;
import bl.analyse.service.AnalyseService;
import bl.analyse.service.PredictBLService;
import bl.factory.BLFactory;
import bl.service.ChartService;
import bl.service.InfoMineService;
import bl.tool.barchart.BarChartService;
import bl.tool.piechart.PieChartService;
import com.fasterxml.jackson.core.JsonProcessingException;
import model.barchart.MixSingleVolumeVO;
import model.barchart.SingleVolumeVO;
import model.barchart.VolumeVO;
import model.common.LinearChartVO;
import model.common.PieChartVO;
import model.stock.*;
import util.enums.PeriodEnum;
import util.exception.BadInputException;
import util.exception.NotFoundException;
import util.json.JsonConverter;
import util.math.NumberFormater;

import java.util.List;
import java.util.Map;

/**
 * Created by kylin on 16/5/24.
 * All rights reserved.
 */
class PushData {

    private BarChartService barChartService;

    private AnalyseService analyseService;

    private PieChartService pieChartService;

    private ChartService chartService;

    private InfoMineService infoMineService;

    private PredictBLService predictBLService;

    private AccuracyService accuracyService;

    PushData() throws NotFoundException {
        this.infoMineService = BLFactory.getInstance().getInfoMineService();
        this.analyseService = BLFactory.getInstance().getAnalyseService();
        this.pieChartService = BLFactory.getInstance().getPieChartService();
        this.barChartService = BLFactory.getInstance().getBarChartService();
        this.chartService = BLFactory.getInstance().getChartService();
        this.predictBLService = BLFactory.getInstance().getPredictBLService();
    }

    /**
     * 将一日价格分时数据加入model
     */
    void pushDailyModel(Map<String, Object> model, String number, String oneDate) throws NotFoundException, JsonProcessingException {
        //一日的分时价格折线图
        LinearChartVO dailyPrice = chartService.getLineChartVO(number, oneDate);

        List<String> dailyLine = JsonConverter.jsonOfLinearChartVO(dailyPrice);
        model.put("dailyLine", dailyLine);

        //一日的分时成交量图
        VolumeVO volumeVO = chartService.getAmountInADayBarchart(number, oneDate);
        String volumeLine = JsonConverter.jsonOfVolumeVO(volumeVO);
        model.put("volumeLine", volumeLine);
    }

    /**
     * 将单只股票基本信息加入model以返回界面
     */
    void pushStockModel(Map<String, Object> model, StockVO stockVO) throws JsonProcessingException, NotFoundException, BadInputException {
        //K线图
        String klinear = JsonConverter.jsonKlinearOfVO(stockVO);
        model.put("kLine", klinear);

        //成交量柱状图
        SingleVolumeVO singleVolumeVO = barChartService.getSingleVolumeVO
                (stockVO.getName(), stockVO.getNumber(), PeriodEnum.DAY, stockVO.getStartDate(), stockVO.getEndDate());
        String singleVolumeLine = JsonConverter.jsonOfVolumeVO(singleVolumeVO);
        model.put("singleVolumeLine", singleVolumeLine);

        //成交量与成交金额柱状图
        MixSingleVolumeVO mixSingleVolumeVO = barChartService.getMixSingleVolumeVO
                (stockVO.getName(), stockVO.getNumber(), PeriodEnum.DAY, stockVO.getStartDate(), stockVO.getEndDate());
        String mixSingleVolumeLine = JsonConverter.jsonOfVolumeVO(mixSingleVolumeVO);
        model.put("mixSingleVolumeLine", mixSingleVolumeLine);
    }


    /**
     * 将统计模型模型加入model以返回界面
     */
    void pushAnalyseModel(Map<String, Object> model, StockVO stockVO) throws JsonProcessingException, NotFoundException, BadInputException {
        //获取SingleViewService的各种内容
        String startDate = stockVO.getStartDate();
        String endDate = stockVO.getEndDate();
        BasicSingleVO basicSingleVO = analyseService.getBasicSingleInfo(stockVO, startDate, endDate);
        model.put("basicSingleVO", basicSingleVO);

        //4个数据分析的折线图rsi,ema,macd,arbr
        LinearChartVO rsiData = analyseService.getStockRSI(stockVO);
        LinearChartVO emaData = analyseService.getStockEMA(stockVO);
        LinearChartVO macdData = analyseService.getStockMACD(stockVO);
        LinearChartVO arbrData = analyseService.getStockARBR(stockVO);

        List<String> rsiLine = JsonConverter.jsonOfLinearChartVO(rsiData);
        List<String> emaLine = JsonConverter.jsonOfLinearChartVO(emaData);
        List<String> macdLine = JsonConverter.jsonOfLinearChartVO(macdData);
        List<String> arbrLine = JsonConverter.jsonOfLinearChartVO(arbrData);

        model.put("rsiLine", rsiLine);
        model.put("emaLine", emaLine);
        model.put("macdLine", macdLine);
        model.put("arbrLine", arbrLine);
    }

    void pushPieChart(Map<String, Object> model, StockVO stockVO,String start,String end) throws NotFoundException, JsonProcessingException {
        //某时间段内单只股票交易金额对比图(饼图)
        String name = stockVO.getName();
        String number = stockVO.getNumber();

        PieChartVO amountVOPie = pieChartService.getPieAmountVO(name, number, start, end);
        List<String> amountPie = JsonConverter.convertPieVO(amountVOPie);
        model.put("amountPie", amountPie);

        //某时间段内单只股票交易量对比图(饼图)
        PieChartVO volumeVOPie = pieChartService.getPieVolumeVO(name, number,  start, end);
        List<String> volumePie = JsonConverter.convertPieVO(volumeVOPie);
        model.put("volumePie", volumePie);
    }

    void pushInfoMine(Map<String, Object> model, String number) throws NotFoundException {
        InfoMine infoMine = infoMineService.getInfoMine(number);
        model.put("InfoMine", infoMine);
    }

    void pushOneDayInfo(Map<String, Object> model, StockVO stockVO) throws NotFoundException {
        StockAttribute attribute = stockVO.getLastAttr();
        OneDayInfo oneDayInfo = new OneDayInfo(attribute.getDate(), attribute.getAttribute(), stockVO.getName());
        model.put("oneDayInfo", oneDayInfo);
    }

    void pushPredictModel(Map<String, Object> model, String number) throws NotFoundException, BadInputException, JsonProcessingException {
        //指标基本分析
        String arbrStr = predictBLService.analyseArbr(number);
        String macdStr = predictBLService.analyseMACD(number);
        String rsiStr = predictBLService.analyseRSI(number);
        String emaStr = predictBLService.analyseEMA(number);

        //高级一些的分析
        String seasonPrice = predictBLService.analyseSeasonPrice(number);
        String seasonVolume = predictBLService.analyseSeasonVolume(number);
        String varStr = predictBLService.analyseVariance(number);

        //预测模型
        String arimaStr = predictBLService.analyseArima(number);
        String summary = predictBLService.multiAnlyse(number);

        //单列的值
        String varianceValue = predictBLService.getVarianceValue(number);
        String priceValue = predictBLService.getSeasonPriceValue(number);
        String volumeValue = predictBLService.getSeasonVolumeValue(number);

        model.put("arbrStr", JsonConverter.jsonOfObject(arbrStr));
        model.put("macdStr", JsonConverter.jsonOfObject(macdStr));
        model.put("rsiStr", JsonConverter.jsonOfObject(rsiStr));
        model.put("emaStr", JsonConverter.jsonOfObject(emaStr));
        model.put("summary", JsonConverter.jsonOfObject(summary));

        model.put("varStr", JsonConverter.jsonOfObject(varStr));
        model.put("seasonPrice", JsonConverter.jsonOfObject(seasonPrice));
        model.put("seasonVolume", JsonConverter.jsonOfObject(seasonVolume));

        model.put("arimaStr", JsonConverter.jsonOfObject(arimaStr));

        model.put("varianceValue", JsonConverter.jsonOfObject(varianceValue));
        model.put("priceValue", JsonConverter.jsonOfObject(priceValue));
        model.put("volumeValue", JsonConverter.jsonOfObject(volumeValue));
    }

    void pushEvaluation(Map<String, Object> model, String number) throws NotFoundException, BadInputException {
        this.accuracyService = BLFactory.getInstance().getAccuracyService();

        double rsiAcurc = accuracyService.analyseRSI(number);
        double arbrAcurc = accuracyService.analyseArbr(number);

        double threshold = 0.03;
        double arimaAcurc = accuracyService.analyseArima(number,threshold);
        double macdAcurc = accuracyService.analyseMACD(number);

        String rsiAcurc1 = NumberFormater.formatDouble(rsiAcurc);
        String arbrAcurc1 = NumberFormater.formatDouble(arbrAcurc);
        String arimaAcurc1 = NumberFormater.formatDouble(arimaAcurc);
        String macdAcurc1 = NumberFormater.formatDouble(macdAcurc);
        String test = NumberFormater.formatDouble(0.2345);

        model.put("rsiAcurc",rsiAcurc1);
        model.put("arbrAcurc",arbrAcurc1);
        model.put("arimaAcurc",arimaAcurc1);
        model.put("macdAcurc",macdAcurc1);
        model.put("test",test);
//        model.put("rsiAcurc",JsonConverter.jsonOfObject(rsiAcurc1));
//        model.put("arbrAcurc",JsonConverter.jsonOfObject(arbrAcurc1));
//        model.put("arimaAcurc",JsonConverter.jsonOfObject(arimaAcurc1));
//        model.put("macdAcurc",JsonConverter.jsonOfObject(macdAcurc1));
    }
}
