package bl.analyse.service;


import model.stock.StockVO;
import util.exception.BadInputException;
import util.exception.NotFoundException;
import model.common.LinearChartVO;
import model.stock.BasicSingleVO;

/**
 * Created by JiachenWang on 2016/3/21.
 */
public interface AnalyseService {

    /**
     * 获得单股综合分析以及预测
     * @return
     */
    BasicSingleVO getBasicSingleInfo(StockVO stockVO,String startDate,String endDate) throws BadInputException, NotFoundException;

    /**
     * 获得RSI数值折线图
     * @return
     * @throws BadInputException
     * @throws NotFoundException
     */
    LinearChartVO getStockRSI(StockVO stockVO)throws BadInputException, NotFoundException;

    /**
     * 获得EMA数值折线图
     * @return
     * @throws BadInputException
     * @throws NotFoundException
     */
    LinearChartVO getStockEMA(StockVO stockVO)throws BadInputException, NotFoundException;

    /**
     * 获得MACD数值折线图
     * @return
     * @throws BadInputException
     * @throws NotFoundException
     */
    LinearChartVO getStockMACD(StockVO stockVO)throws BadInputException, NotFoundException;


    /**
     * 获得ARBR数值折线图
     * @return
     * @throws BadInputException
     * @throws NotFoundException
     */
    LinearChartVO getStockARBR(StockVO stockVO)throws BadInputException, NotFoundException;
}
