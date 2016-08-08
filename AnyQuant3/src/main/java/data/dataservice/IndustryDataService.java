package data.dataservice;

import po.IndustryPO;
import util.enums.IndustryPeriodEnum;
import util.exception.NotFoundException;

/**
 * Created by kylin on 16/6/1.
 * All rights reserved.
 */
public interface IndustryDataService {

    /**
     * 获取行业信息
     * @param industryName
     * @param industryPeriodEnum
     * @return
     */
    IndustryPO getIndustry(String industryName, IndustryPeriodEnum industryPeriodEnum) throws NotFoundException;

}
