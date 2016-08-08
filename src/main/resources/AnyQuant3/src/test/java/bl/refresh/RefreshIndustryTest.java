package bl.refresh;

import model.industry.IndustryVOForSeven;
import model.stock.StockVO;
import org.junit.Test;
import util.enums.IndustryPeriodEnum;
import util.exception.NotFoundException;

import java.util.List;

/**
 * Created by kylin on 16/6/2.
 * All rights reserved.
 */
public class RefreshIndustryTest {

    RefreshIndustry refreshIndustry = new RefreshIndustry();

    public RefreshIndustryTest() throws NotFoundException {

    }

    @Test
    public void refreshIndustry() throws Exception {
        String indusName = "酿酒行业";
        IndustryPeriodEnum periodEnum = IndustryPeriodEnum.FIRST2016;
        List<StockVO> stockVOs = refreshIndustry.getStockVOsIndustry(indusName,periodEnum);

        IndustryVOForSeven industryVOForSeven = refreshIndustry.getBasicIndustryInfo(indusName,stockVOs,periodEnum);
        System.out.println(industryVOForSeven.getIndustryName());
        System.out.println(industryVOForSeven);


//
//        stockVOs = refreshIndustry.getStockVOsIndustry("电子信息",periodEnum);
//        industryVOForSeven = refreshIndustry.getBasicIndustryInfo("电子信息",stockVOs,periodEnum);
//        System.out.println(industryVOForSeven.getIndustryName());
//        System.out.println(industryVOForSeven);
//
//        stockVOs = refreshIndustry.getStockVOsIndustry("酿酒行业",periodEnum);
//        industryVOForSeven = refreshIndustry.getBasicIndustryInfo("酿酒行业",stockVOs,periodEnum);
//        System.out.println(industryVOForSeven.getIndustryName());
//        System.out.println(industryVOForSeven);
    }

}