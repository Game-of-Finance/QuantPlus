package bl.service;

import bl.tool.StockStub;
import bl.impl.IndustryImpl;
import model.industry.IndustryVO;
import org.junit.Test;
import util.enums.IndustryPeriodEnum;
import util.exception.NotFoundException;

/**
 * Created by kylin on 16/5/16.
 */
public class IndustryServiceTest {
    private StockService stockService = new StockStub();

    private String number = "sh600519";
    private IndustryService industryService = new IndustryImpl();

    public IndustryServiceTest() throws NotFoundException {
    }

    @Test
    public void getBasicIndustryInfo() throws Exception {
        IndustryPeriodEnum industryPeriod = IndustryPeriodEnum.SECOND;

        IndustryVO industryVO = industryService.getBasicIndustryInfo("酿酒行业",industryPeriod);
        System.out.println(industryVO.getIndustryName());
    }

    @Test
    public void getIndustryPrice() throws Exception {

    }

    @Test
    public void getCompareLinearChartVO() throws Exception {

    }

    @Test
    public void getIndustryVolume() throws Exception {

    }

}