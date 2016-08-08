package controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import model.analyse.RiseAndFallVO;
import model.industry.IndustryVOForSeven;
import model.stock.MySearchResult;
import model.stock.OneDayInfo;
import org.json.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import util.constant.StockConstant;
import util.enums.IndustryPeriodEnum;
import util.exception.NotFoundException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by kylin on 16/5/12.
 * All rights Reserved.
 */
@Controller
public class MainController extends MyController{

    public MainController() throws NotFoundException {

    }

    @RequestMapping(value = "*.return", method = RequestMethod.GET)
    public ModelAndView returnIndex() {
        return this.index();
    }


    /**
     * 请求首页请求:显示FrontPage
     */
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView index() {
        Map<String, Object> model = new HashMap<>();
        //行业股票涨跌幅排行 (前后10名)
        List<RiseAndFallVO> industryRiseList = rankService.getIndustryRiseList();
        int size = industryRiseList.size();
        //数目太小,返回所有数据
        if(size <= 10){
            model.put("industryRiseList", industryRiseList);
            model.put("industryFallList", industryRiseList);
        }else {
            model.put("industryRiseList", industryRiseList.subList(size-10,size));
            model.put("industryFallList", industryRiseList.subList(0,10));
        }

        //个股涨跌幅排行 (前后10名)
        List<RiseAndFallVO> stockRiseList = rankService.getStockRiseList();
        size = stockRiseList.size();
        //数目太小,返回所有数据
        if(size <= 10){
            model.put("stockRiseList", stockRiseList);
            model.put("stockFallList", stockRiseList);
        }else {
            //否则返回前后10名
            model.put("stockRiseList", stockRiseList.subList(size-10,size));
            model.put("stockFallList", stockRiseList.subList(0,10));
        }

        return new ModelAndView("frontpage", model);
    }
    /**
     * 首页输入关键字,未点击搜索
     */
    @RequestMapping(value = "*.input", method = RequestMethod.GET)
    public ModelAndView input(HttpServletRequest request) {
        Map<String, Object> model = new HashMap<>();

        String input = request.getParameter("input");
        List<MySearchResult> searchResults  = searchService.searchStock(input);
        model.put("searchResults",searchResults);
        return new ModelAndView("frontpage", model);
    }

    //行业榜单里面,点击更多(默认一个季度),返回行业数据包,IndustryVO
    @RequestMapping(value = "*.allindustry", method = RequestMethod.GET)
    public ModelAndView mainIndustry(HttpServletRequest request) {
        Map<String, Object> model = new HashMap<>();
        List<IndustryVOForSeven> industryVOList = new ArrayList<>();
        String from = request.getParameter("from");
        try {
            //默认获取2016第一季度数据
            String season = request.getParameter("season");

            IndustryPeriodEnum defaultPeriod = IndustryPeriodEnum.getPeriodEnum(season);
            model.put("season",season);
            List<String> indusNames = industryService.getAllIndustry();
            //对于每一个行业
            for (String indusName : indusNames) {
                IndustryVOForSeven industryVO = industryService.getBasicIndustryInfo(indusName,defaultPeriod);
                industryVOList.add(industryVO);
            }
            model.put("industryVOList",industryVOList);
            return new ModelAndView("allindustry", model);

        } catch (NotFoundException e) {
            return this.directToError(model,e,from,"false","");
        }

    }


    //个股票榜单,点击更多,按照大盘划分,最近一天的数据包
    @RequestMapping(value = "*.allstock", method = RequestMethod.GET)
    public ModelAndView mainStock(HttpServletRequest request) {
        Map<String, Object> model = new HashMap<>();

        //默认显示沪市
        String market=request.getParameter("market");
        String marketName;
        if(market.equals("sh")){
            marketName= StockConstant.SH_MARKET;
        }else{
            marketName=StockConstant.SZ_MARKET;
        }
        List<OneDayInfo> stockAttributes = marketService.getStockInMarket(marketName);
        model.put("market",market);
        model.put("oneDayInfoList",stockAttributes);

        return new ModelAndView("allstock", model);
    }


    //模糊查询
    @RequestMapping(value = "*.fuzzy", method = RequestMethod.GET)
    public void mainSearch2(HttpServletRequest request, HttpServletResponse response) {
        System.out.print("qqq");
        this.mainSearch(request,response);
    }

    @RequestMapping(value = "*.fuzzysearch", method = RequestMethod.GET)
    @ResponseBody
    public void mainSearch(HttpServletRequest request, HttpServletResponse response){

        String text=request.getParameter("info");
        List<MySearchResult> results=searchService.searchStock(text);
        List<String> jsons=new ArrayList<>();

        for(MySearchResult result:results){
            StringWriter writer = new StringWriter();
            ObjectMapper mapper = new ObjectMapper();
            try {
                mapper.writeValue(writer, result);
            } catch (IOException e) {
                e.printStackTrace();
            }
            String json=writer.toString();
            jsons.add(json);
        }

        JSONArray jsonArray=new JSONArray(jsons);
        response.setContentType("text/json;charset=utf-8");
        try {
            response.getWriter().print(jsonArray);
        } catch (IOException e) {
            //这异常简直不能够容忍
            e.printStackTrace();
        }
    }
}
