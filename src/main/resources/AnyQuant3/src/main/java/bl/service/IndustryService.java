package bl.service;


import model.industry.IndustryVOForSeven;
import util.enums.IndustryPeriodEnum;
import util.exception.NotFoundException;

import java.util.List;

/**
 * Created by kylin on 16/3/31.
 */
public interface IndustryService {

    /**
     * 通过股票编号获得所属行业名称
     *
     * @param num 股票编号
     * @return 所属行业名称
     * @throws NotFoundException
     */
    String getIndustryName(String num) throws NotFoundException;

    /**
     * 返回所有行业的名称
     *
     * @return
     */
    List<String> getAllIndustry();



    /**
     * 获取一个行业的基本数据统计信息
     *
     * @param industryName 行业名称
     * @param period 时间间隔
     * @return 行业基本数据VO包
     */
    IndustryVOForSeven getBasicIndustryInfo(String industryName, IndustryPeriodEnum period) throws NotFoundException;


    /*---------------------下面是被暂时抛弃的接口---------------------*/

//
//
//    /**
//     * 获取一个行业一段时间内的价格统计信息(折线图)
//     *
//     * @param industryName 行业名称
//     * @param period 时间间隔
//     * @return 行业基本数据VO包
//     */
//    LinearChartVO getIndustryPrice(String industryName, IndustryPeriodEnum period) throws NotFoundException;
//
//    /**
//     * 获取一个行业一段时间内的涨跌幅与大盘涨跌幅对比(折线图)
//     *
//     * @param industryName 行业名称
//     * @param period 时间
//     * @return
//     * @throws BadInputException
//     * @throws NotFoundException
//     */
//    LinearChartVO getCompareLinearChartVO(String industryName, IndustryPeriodEnum period) throws BadInputException, NotFoundException;
//
//    /**
//     * 获取一个行业一段时间内的资金流向统计信息(柱状图)
//     *
//     * @param industryName 行业名称
//     * @param period 时间间隔
//     * @return 行业基本数据VO包
//     */
//    VolumeVO getIndustryVolume(String industryName, IndustryPeriodEnum period) throws NotFoundException;


}
