package controller;

import bl.factory.BLFactory;
import bl.factory.RankSingleton;
import bl.service.*;
import org.springframework.web.servlet.ModelAndView;
import util.constant.ControllerValue;
import util.exception.NotFoundException;

import java.util.Map;

/**
 * Created by kylin on 16/6/1.
 * All rights reserved.
 */
class MyController {


    /**
     * 获取逻辑层数据的服务
     */
    StockService stockService;
    IndustryService industryService;
    MarketService marketService;
    RankService rankService;
    SearchService searchService;

    /**
     * 向界面返回数据的辅助类
     */
    PushData pushData;

    String today = ControllerValue.today;

    String startDate = ControllerValue.startDate;

    MyController() throws NotFoundException {
        industryService = BLFactory.getInstance().getIndustryService();
        marketService = BLFactory.getInstance().getMarketService();
        stockService = BLFactory.getInstance().getStockService();
        rankService = RankSingleton.getRankService();
        searchService = BLFactory.getInstance().getSearchService();
        pushData = new PushData();
    }

    /**
     * controller异常的统一处理方法
     *
     * @param model 返回异常界面的信息
     * @param e 异常
     * @param sourcePage 来源界面
     * @return 错误信息处理界面
     */
    ModelAndView directToError(Map<String, Object> model, Exception e, String sourcePage,String isSearch,String rawNumber){
        //返回异常的错误信息到统一异常处理界面
        model.put("errorMsg",e.getMessage());
        model.put("from",sourcePage);
        model.put("isSearch",isSearch);
        model.put("rawNumber",rawNumber);

        return new ModelAndView("error", model);
    }
}
