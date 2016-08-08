package data.impl;

import dao.entity.IndustryAttribute;
import dao.factory.DaoFactory;
import dao.service.IndustryService;
import data.dataservice.IndustryDataService;
import po.IndustryPO;
import util.enums.IndustryPeriodEnum;
import util.exception.NotFoundException;

/**
 * Created by kylin on 16/6/1.
 * All rights reserved.
 */
public class IndustryDataImpl implements IndustryDataService {

    //TODO,TEST

    @Override
    public IndustryPO getIndustry(String industryName, IndustryPeriodEnum industryPeriodEnum) throws NotFoundException {
        IndustryService reader = DaoFactory.getInstance().getIndustryService();
        IndustryAttribute dao = reader.getIndustryInfo(industryName, industryPeriodEnum.toString());
        return new IndustryPO(dao);
    }

}
