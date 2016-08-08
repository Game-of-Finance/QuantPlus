package bl.impl;

import model.industry.IndustryVO;
import org.junit.Test;
import util.enums.IndustryPeriodEnum;
import util.exception.NotFoundException;

import java.io.IOException;
import java.util.List;

/**
 * Created by kylin on 16/5/19.
 */
public class IndustryViewImplTest {

    private IndustryImpl industryView;

    public IndustryViewImplTest() throws IOException, NotFoundException {
        industryView = new IndustryImpl();
    }
    @Test
    public void getBasicIndustryInfo() throws Exception {
        IndustryVO industryVO4=industryView.getBasicIndustryInfo("交通运输", IndustryPeriodEnum.FIRST2016);
        System.out.println(industryVO4.getIndustryName());
        System.out.println(industryVO4.getSeason());
        System.out.println(industryVO4.getIndustryBasicInfo().getTotalAmount());
        System.out.println(industryVO4.getIndustryBasicInfo().getAveragePrice());
        System.out.println(industryVO4.getIndustryBasicInfo().getAverageChange());
    }


    @Test
    public void getIndustryList() throws Exception {
        List<String> industryVolumeVO=industryView.getAllIndustry();
        industryVolumeVO.forEach(System.out::println);
    }


    @Test
    public void getIndustryPrice() throws Exception {
//        LinearChartVO linearChartVO=industryView.getIndustryPrice("酒业", IndustryPeriodEnum.FIRST);
//        System.out.println(linearChartVO.getChartType());
    }

    @Test
    public void getCompareLinearChartVO() throws Exception {
//        LinearChartVO linearChartVO=industryView.getCompareLinearChartVO("酒业", IndustryPeriodEnum.FIRST);
//        System.out.println(linearChartVO.getChartType());
    }

    @Test
    public void getIndustryVolume() throws Exception {
//        VolumeVO industryVolumeVO=industryView.getIndustryVolume("酒业", IndustryPeriodEnum.FIRST);
//        System.out.println(industryVolumeVO.getList().size());
    }



}