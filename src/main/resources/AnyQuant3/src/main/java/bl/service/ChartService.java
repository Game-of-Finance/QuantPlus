package bl.service;

import model.barchart.VolumeVO;
import model.common.LinearChartVO;
import util.exception.NotFoundException;

/**
 * Created by kylin on 16/6/1.
 * All rights reserved.
 */
public interface ChartService {

    /**
     * 获取一直股票单日价格的折线图数据,包括两条数据线,即时价格与累计均价
     *
     * @param number 股票代码
     * @param date   日期
     * @return
     * @throws NotFoundException
     */
    LinearChartVO getLineChartVO(String number, String date) throws NotFoundException;

    /**
     * 获取一直股票单日价格的成交量的数据
     *
     * @param number 股票代码
     * @param date   日期
     * @return
     * @throws NotFoundException
     */
    VolumeVO getAmountInADayBarchart(String number, String date) throws NotFoundException;

}
