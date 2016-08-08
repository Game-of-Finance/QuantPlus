package controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import model.industry.IndustryPack;
import model.industry.IndustryVO;
import model.stock.OneDayInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import util.enums.IndustryPeriodEnum;
import util.exception.BadInputException;
import util.exception.NotFoundException;
import util.json.JsonReader;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by kylin on 16/5/24.
 * All rights reserved.
 */
@Controller
public class IndustryController extends MyController {

    public IndustryController() throws NotFoundException {

    }

    @RequestMapping(value = "*.industry", method = RequestMethod.GET)
    public ModelAndView getIndustry(HttpServletRequest httpServletRequest) {

        HttpSession session = httpServletRequest.getSession();
        String number = (String) session.getAttribute("number");
        String from = httpServletRequest.getParameter("from");
        number = JsonReader.getNumber(number);
        Map<String, Object> model = new HashMap<>();
        //获取该股票对应的行业
        String industryName = null;
        try {
            industryName = industryService.getIndustryName(number);

            //返回行业数据
            this.pushIndustryModel(model, industryName);
            return new ModelAndView("industry", model);

        } catch (NotFoundException e) {
            return this.directToError(model, e, from,"false",number);
        }
    }

    /**
     * 将数据分析结果情况加入model以返回界面
     *
     * @param model
     * @param industryName
     * @throws NotFoundException
     * @throws BadInputException
     * @throws JsonProcessingException
     */
    private void pushIndustryModel(Map<String, Object> model, String industryName) throws NotFoundException {

        //行业基本信息VO,所有时间段
        List<IndustryVO> industrySeasonVO = new ArrayList<>();
        for (IndustryPeriodEnum industryPeriod : IndustryPeriodEnum.getAllPeriod()) {
            IndustryVO industryVO = industryService.getBasicIndustryInfo(industryName, industryPeriod);
            industrySeasonVO.add(industryVO);
        }
        //最近4个季度行业基本信息,数据打包
        IndustryPack industryPack = new IndustryPack(industrySeasonVO);
        model.put("industryPack", industryPack);

        //行业内股票排行榜
        List<OneDayInfo> stockInIndusList = rankService.getStockRiseList(industryName);
        model.put("stockInIndusList", stockInIndusList);
    }

    private void dispatched() {
//        //行业价格折线图与成交量
//        VolumeVO industryVolumeData = industryService.getIndustryVolume(industryName, industryPeriod);
//        LinearChartVO comparePriceData = industryService.getCompareLinearChartVO(industryName, industryPeriod);
//        LinearChartVO industryPriceData = industryService.getIndustryPrice(industryName, industryPeriod);
//
//        List<String> industryPriceLine = JsonConverter.jsonOfLinearChartVO(industryPriceData);
//        List<String> comparePriceLine = JsonConverter.jsonOfLinearChartVO(comparePriceData);
//        String volume = JsonConverter.jsonOfVolumeVO(industryVolumeData);
//
//        model.put("industryPriceLine", industryPriceLine);
//        model.put("comparePriceLine", comparePriceLine);
//        model.put("industryVolume", volume);
    }


}
