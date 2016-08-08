package bl.tool.piechart;


import model.common.PieChartVO;
import util.exception.NotFoundException;

/**
 * Created by JiachenWang on 2016/4/10.
 */
public interface PieChartService {

    /**
     * 获得某时间段内单只股票交易量对比图(饼图)
     * @param name 股票名称
     * @param number 股票编号
     * @param start 起始时间
     * @param end 结束时间
     * @return
     */
    PieChartVO getPieVolumeVO(String name, String number, String start, String end) throws NotFoundException;

    /**
     * 获得某时间段内单只股票交易金额对比图(饼图)
     * @param name 股票名称
     * @param number 股票编号
     * @param start 起始时间
     * @param end 结束时间
     * @return
     */
    PieChartVO getPieAmountVO(String name, String number, String start, String end) throws NotFoundException;

}
