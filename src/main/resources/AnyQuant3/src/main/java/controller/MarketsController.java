package controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import model.market.MarketVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import util.exception.NotFoundException;
import util.json.JsonReader;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by kylin on 16/5/24.
 * All rights reserved.
 */
@Controller
public class MarketsController extends MyController{

    MarketsController() throws NotFoundException {
    }

    @RequestMapping(value = "*.markets", method = {RequestMethod.GET})
    public ModelAndView getMarket(HttpServletRequest httpServletRequest){
        //获取股票代码
        HttpSession session = httpServletRequest.getSession();
        String number = (String) session.getAttribute("number");
        number = JsonReader.getNumber(number);
        String from = httpServletRequest.getParameter("from");
//        String view = httpServletRequest.getParameter("view");
//        System.out.println("from："+from);
//        System.out.println("view: "+view);

        Map<String, Object> model = new HashMap<>();

        try {
            //获取大盘信息
            String marketNumber = marketService.marketNumber(number);
            MarketVO marketVO = marketService.getMarket(marketNumber);

            //返回结果
            model.put("marketVO",marketVO);
            return new ModelAndView("markets",model);

        } catch (NotFoundException | JsonProcessingException e) {
            return this.directToError(model,e,from,"false",number);
        }
    }

}
