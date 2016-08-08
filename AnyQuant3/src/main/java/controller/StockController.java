package controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import model.stock.StockNumber;
import model.stock.StockVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import util.exception.BadInputException;
import util.exception.NotFoundException;
import util.json.JsonConverter;
import util.json.JsonReader;
import util.time.DateCount;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by kylin on 16/5/24.
 * All rights reserved.
 *
 */
@Controller
public class StockController extends MyController{

    StockController() throws NotFoundException {
    }

    /**
     * 界面传入参数获取股票信息的主方法
     *
     * @return 一日分时图数据与股票历史数据
     */
    @RequestMapping(value = "*.search", method = {RequestMethod.GET})
    public ModelAndView search(HttpServletRequest httpServletRequest,HttpServletResponse response) throws JsonProcessingException {
        //从用户的输入取参数
        String number = httpServletRequest.getParameter("number");

        //要去哪里
        String view = httpServletRequest.getParameter("view");

        //从哪里来
        String from = httpServletRequest.getParameter("from");
//        System.out.println("from:"+from);
//        System.out.println();

        //是error Page 返回，才有的参数
        String isReturn = httpServletRequest.getParameter("isReturn");
        String lastNumber = httpServletRequest.getParameter("lastNumber");


        Map<String, Object> model = new HashMap<>();

        //将参数加入session,封装成json格式
        StockNumber stockNumber;
        if(isReturn==null){
        //不是从error Page 返回,就改变session的stockNum
        stockNumber = new StockNumber(number);
        }else{
            //是从error Page 返回,就将session中的stockNum 恢复为 rawNumber
            stockNumber= new StockNumber(lastNumber);
            view = from;
        }

        String str = JsonConverter.jsonOfObject(stockNumber);

        //If an object of the same name is already bound to the session,the object is replaced.
        HttpSession session = httpServletRequest.getSession();
        session.setAttribute("number",str);

        switch (view) {
            case "singleStock":
                return this.getStock(httpServletRequest,response);
            case "analysis":
                return this.getAnalysis(httpServletRequest, response);
            case "history":
                return this.getHistory(httpServletRequest, response);
        }

        //回到 "从哪里来" 的界面
        return new ModelAndView(from, model);
    }

    @RequestMapping(value = "*.singleStock", method = {RequestMethod.GET})
    public ModelAndView getStock(HttpServletRequest httpServletRequest, HttpServletResponse rs) {
//        System.out.println("In getStock");
        Map<String, Object> model = new HashMap<>();
        String from = httpServletRequest.getParameter("from");
//        System.out.println();
        //是search才有的参数
        String isSearch = httpServletRequest.getParameter("isSearch");
        String rawNumber = httpServletRequest.getParameter("rawNumber");

        //是从error Page 返回，才有的参数
        String isReturn = httpServletRequest.getParameter("isReturn");
        String lastNumber = httpServletRequest.getParameter("lastNumber");
        try {

            String number;

            if(isReturn!=null){
                //从error Page 返回
                number = lastNumber;
            }else{
                //直接从session取参数
                HttpSession session = httpServletRequest.getSession();
                number = (String) session.getAttribute("number");
                number = JsonReader.getNumber(number);
            }
            //再返回给界面
            model.put("number",number);

            StockVO stockVO = stockService.getStock(number, startDate, today);

            //一日分时图数据(分时价格折线图与成交量)
            String latestDate = this.stockService.getLatestDate(number);
            pushData.pushDailyModel(model,number,latestDate);

            //单只股票基本信息(K线图,成交量柱状图)
            pushData.pushStockModel(model,stockVO);

            //信息地雷
            pushData.pushInfoMine(model,number);

            //昨天的数据(可能不存在),写成最近一天的数据
            pushData.pushOneDayInfo(model,stockVO);

            return new ModelAndView("singleStock", model);

        }catch (JsonProcessingException | NotFoundException | BadInputException e) {

            //search或页面切换时才跳转到error Page
            return this.directToError(model,e,from,isSearch,rawNumber);
        }
    }



    @RequestMapping(value = "*.history", method = {RequestMethod.GET})
    //返回StockVO历史数据
    public ModelAndView getHistory(HttpServletRequest httpServletRequest, HttpServletResponse response) {

        String from = httpServletRequest.getParameter("from");
        //是search才有的参数
        String isSearch = httpServletRequest.getParameter("isSearch");
        String rawNumber = httpServletRequest.getParameter("rawNumber");

        //是从error Page 返回，才有的参数
        String isReturn = httpServletRequest.getParameter("isReturn");
        String lastNumber = httpServletRequest.getParameter("lastNumber");

        String number;
        if(isReturn!=null){
            //从error Page 返回
            number = lastNumber;
        }else{
            //直接从session取参数
            HttpSession session = httpServletRequest.getSession();
            number = (String) session.getAttribute("number");
            number = JsonReader.getNumber(number);
        }

        Map<String, Object> model = new HashMap<>();
        try {
            StockVO stockVO  = stockService.getStock(number, startDate, today);
            model.put("stockVO", stockVO);
            return new ModelAndView("history",model);

        } catch (BadInputException | NotFoundException e) {
            return this.directToError(model,e,from,isSearch,rawNumber);
        }

    }


    @RequestMapping(value = "*.analysis", method = {RequestMethod.GET})
    public ModelAndView getAnalysis(HttpServletRequest httpServletRequest, HttpServletResponse response) {

        String from = httpServletRequest.getParameter("from");
        //是search才有的参数
        String isSearch = httpServletRequest.getParameter("isSearch");
        String rawNumber = httpServletRequest.getParameter("rawNumber");

        //是从error Page 返回，才有的参数
        String isReturn = httpServletRequest.getParameter("isReturn");
        String lastNumber = httpServletRequest.getParameter("lastNumber");

        String number;
        if(isReturn!=null){
            //从error Page 返回
            number = lastNumber;
        }else{
            //直接从session取参数
            HttpSession session = httpServletRequest.getSession();
            number = (String) session.getAttribute("number");
            number = JsonReader.getNumber(number);
        }


        Map<String, Object> model = new HashMap<>();

        //获取URL参数,StockVO
        StockVO stockVO = null;
        try {
            stockVO = stockService.getStock(number, startDate, today);
            //数据分析结果
            pushData.pushAnalyseModel(model, stockVO);
            //预测结果
            pushData.pushPredictModel(model, stockVO.getNumber());
            //预测分析准确性
            pushData.pushEvaluation(model, stockVO.getNumber());

            String latestDate = this.stockService.getLatestDate(number);
            String start = DateCount.count(latestDate,-14);
            pushData.pushPieChart(model,stockVO,start,latestDate);

            return new ModelAndView("analysis",model);

        } catch (JsonProcessingException | BadInputException | NotFoundException e) {
            return this.directToError(model,e, from,isSearch,rawNumber);
        }
    }

}
