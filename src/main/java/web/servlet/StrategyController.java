package web.servlet;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import web.model.strategy.Root;
import web.tools.NumberUtil;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class StrategyController {
    @RequestMapping(value = "newStrategy.do", method = RequestMethod.POST)
    public Map<String, Object> newStrategy(@RequestParam List<String> selectStock,
                                    @RequestParam List<String> selectTime,
                                    @RequestParam List<String> selectTimePara,
                                    @RequestParam List<String> tradePara) {
        Map<String, Object> result =new HashedMap();

        //生成vm
        Root root =new Root();
        Root.SelectStockBean selectStockBean =new Root.SelectStockBean();
        Root.SelectTimeBean selectTimeBean =new Root.SelectTimeBean();
        List<Root.SelectStockBean.FilterBean> filter = new ArrayList<Root.SelectStockBean.FilterBean>();
        Root.SelectTimeBean.ConditionBean conditionBean =new Root.SelectTimeBean.ConditionBean();
        Root.SelectTimeBean.ParameterBean parameter = new Root.SelectTimeBean.ParameterBean();
        Root.TradeBean trade = new Root.TradeBean();

        if(!selectStock.get(0).equals("")){
            System.out.println("has macd");
            Root.SelectStockBean.FilterBean filterBean =new Root.SelectStockBean.FilterBean();
            filterBean.setName("MACD");
            filterBean.setComparison(selectStock.get(0));
            filterBean.setCount_low(NumberUtil.parseDouble(selectStock.get(1)));
            filterBean.setCount_upper(NumberUtil.parseDouble(selectStock.get(2)));
            filter.add(filterBean);
        }
        if(!selectStock.get(4).equals("")){
            System.out.println("has 资产");
            Root.SelectStockBean.FilterBean filterBean =new Root.SelectStockBean.FilterBean();
            filterBean.setName("资产");
            filterBean.setComparison(selectStock.get(4));
            filterBean.setCount_low(NumberUtil.parseDouble(selectStock.get(5)));
            filterBean.setCount_upper(NumberUtil.parseDouble(selectStock.get(6)));
            filter.add(filterBean);
        }
        if(!selectTime.get(0).equals("")){
            System.out.println("has time macd");
            Root.SelectTimeBean.ConditionBean.CMACDBean cmacdBean =new Root.SelectTimeBean.ConditionBean.CMACDBean();
            cmacdBean.setName("MACD");
            //TODO　more macd info
            conditionBean.setC_MACD(cmacdBean);
        }
        if(!selectTime.get(3).equals("")){
            System.out.println("has time ma");
            Root.SelectTimeBean.ConditionBean.CMABean cmaBean =new Root.SelectTimeBean.ConditionBean.CMABean();
            cmaBean.setName("MA");
            //TODO　more ma info
            conditionBean.setC_MA(cmaBean);
        }

        System.out.println("<<");
        int i=0;
        for(String s:selectStock){
            System.out.println(i+":"+s);
            i++;
        }
        System.out.println("<<");
        int j=0;
        for(String s:selectTime){
            System.out.println(j+":"+s);
            j++;
        }
        parameter.setBear_to_bull(NumberUtil.parseInt(selectTimePara.get(0)));
        parameter.setBull_to_bear(NumberUtil.parseInt(selectTimePara.get(1)));
        parameter.setBear_position(NumberUtil.parseDouble(selectTimePara.get(2)));

        trade.setCycle(NumberUtil.parseInt(tradePara.get(0)));

        selectStockBean.setFilter(filter);
        root.setSelectStock(selectStockBean);
        selectTimeBean.setParameter(parameter);
        selectTimeBean.setCondition(conditionBean);
        root.setSelectTime(selectTimeBean);
        root.setTrade(trade);
        //system
        System.out.println("getBear_to_bull"+root.getSelectTime().getParameter().getBear_to_bull());
        System.out.println("getBull_to_bear"+root.getSelectTime().getParameter().getBull_to_bear());
        System.out.println("getBear_position"+root.getSelectTime().getParameter().getBear_position());

        result.put("status","success");
        return result;

    }
}
