package bl.analyse.service;

import util.exception.BadInputException;
import util.exception.NotFoundException;

/**
 * Created by JiachenWang on 2016/5/24.
 */
public interface PredictBLService {

    /**
     *  综合预测给出分析结论
     * @param stock_num 股票编号
     * @return 综合分析结论
     * @throws BadInputException
     * @throws NotFoundException
     */
    String multiAnlyse(String stock_num) throws BadInputException, NotFoundException;

    /**
     * 通过MACD预测分析（150日有效数据）
     * @param stock_num 股票编号
     * @return 分析结论
     * @throws BadInputException
     * @throws NotFoundException
     */
    String analyseMACD(String stock_num) throws BadInputException, NotFoundException;

    /**
     * 通过方差预测分析（15日有效数据）
     * @param stock_num 股票编号
     * @return 分析结论
     * @throws BadInputException
     * @throws NotFoundException
     */
    String analyseVariance(String stock_num) throws BadInputException, NotFoundException;

    /**
     * 通过方差预测分析（15日有效数据）
     * @param stock_num 股票编号
     * @return 百分数
     * @throws BadInputException
     * @throws NotFoundException
     */
    String getVarianceValue(String stock_num) throws BadInputException, NotFoundException;

    /**
     * 通过RSI数值分析股票近日的涨跌幅趋势
     *
     * @param number 股票代码
     * @return 分析结果
     * @throws NotFoundException
     * @throws BadInputException
     */
    String analyseRSI(String number) throws NotFoundException, BadInputException;

    /**
     * 通过方差预测分析
     * @param stock_num 股票编号
     * @return 分析结论
     * @throws BadInputException
     * @throws NotFoundException
     */
    String analyseArbr(String stock_num) throws BadInputException, NotFoundException;

    /**
     * 通过arima模型预测股票价格
     * @param stock_num 股票编号
     * @return 分析结论
     * @throws BadInputException
     * @throws NotFoundException
     */
    String analyseArima(String stock_num) throws BadInputException, NotFoundException;

    /**
     * 通过季节指数模型预测股票价格
     * @param stock_num 股票编号
     * @return 分析结论
     * @throws BadInputException
     * @throws NotFoundException
     */
    String analyseSeasonPrice(String stock_num) throws BadInputException, NotFoundException;

    /**
     * 通过季节指数模型预测股票成交量
     * @param stock_num 股票编号
     * @return 分析结论
     * @throws BadInputException
     * @throws NotFoundException
     */
    String analyseSeasonVolume(String stock_num) throws BadInputException, NotFoundException;

    /**
     * 通过季节指数模型预测股票价格
     * @param stock_num 股票编号
     * @return 值
     * @throws BadInputException
     * @throws NotFoundException
     */
    String getSeasonPriceValue(String stock_num) throws BadInputException, NotFoundException;

    /**
     * 通过季节指数模型预测股票成交量
     * @param stock_num 股票编号
     * @return 值
     * @throws BadInputException
     * @throws NotFoundException
     */
    String getSeasonVolumeValue(String stock_num) throws BadInputException, NotFoundException;

    /**
     * 通过EMA预测分析
     *
     * @param stock_num 股票编号
     * @return 分析结论
     * @throws BadInputException
     * @throws NotFoundException
     */
    String analyseEMA(String stock_num) throws BadInputException, NotFoundException;
}
