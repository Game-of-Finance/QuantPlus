package data.impl.stub;

import data.dataservice.IndustryDataService;
import po.IndustryPO;
import util.enums.IndustryPeriodEnum;

/**
 * Created by JiachenWang on 2016/6/1.
 */
public class IndustryDataStub implements IndustryDataService {

    @Override
    public IndustryPO getIndustry(String industryName, IndustryPeriodEnum industryPeriodEnum) {
        return null;
    }
}
