package data.impl;

import org.junit.Test;
import po.IndustryPO;
import util.enums.IndustryPeriodEnum;

/**
 * Created by JiachenWang on 2016/6/1.
 */
public class IndustryDataImplTest {

    @Test
    public void getIndustry() throws Exception {
        IndustryDataImpl test = new IndustryDataImpl();
        IndustryPO po = test.getIndustry("酿酒行业", IndustryPeriodEnum.FIRST2016);
        System.out.println(po.getTime());
        System.out.println(po.getTime().equalsIgnoreCase(IndustryPeriodEnum.FIRST2016.getName()));
    }

}