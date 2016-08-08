package controller;

import bl.impl.IndustryImpl;
import model.industry.IndustryVO;
import org.junit.Test;
import util.enums.IndustryPeriodEnum;
import util.exception.NotFoundException;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by kylin on 16/6/6.
 * All rights reserved.
 */
public class IndustryControllerTest {


    private IndustryImpl industryService = new IndustryImpl();

    public IndustryControllerTest() throws NotFoundException {
    }

    @Test
    public void getIndustry() throws Exception {
        List<IndustryVO> industrySeasonVO = new ArrayList<>();
        for (IndustryPeriodEnum industryPeriod : IndustryPeriodEnum.getAllPeriod()) {
            IndustryVO industryVO = industryService.getBasicIndustryInfo("汽车制造", industryPeriod);
            industrySeasonVO.add(industryVO);
        }
        System.out.println(industrySeasonVO.size());
    }

}