package bl.tool.barchart;

import model.barchart.MixSingleVolumeVO;
import model.barchart.SingleVolumeVO;
import util.enums.PeriodEnum;
import util.exception.BadInputException;
import util.exception.NotFoundException;

/**
 * Created by JiachenWang on 2016/4/10.
 */
public interface BarChartService {

    /**
     * 获得单股成交量数据(柱状图)
     * @param name 股票名称
     * @param number 股票编号
     * @param period 时间间隔
     * @param start 起始时间
     * @param end 结束时间
     * @return
     */
    SingleVolumeVO getSingleVolumeVO(String name, String number, PeriodEnum period, String start, String end) throws NotFoundException,
            BadInputException;

    /**
     * 获得单股成交量以及成交金额数据(柱状图)
     * @param name 股票名称
     * @param number 股票编号
     * @param period 时间间隔
     * @param start 起始时间
     * @param end 结束时间
     * @return
     */
    MixSingleVolumeVO getMixSingleVolumeVO(String name, String number, PeriodEnum period, String start, String end) throws NotFoundException, BadInputException;
}
