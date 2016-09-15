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
                                    @RequestParam List<String> tradePara,
                                           @RequestParam List<String> strategyTest) {
        Map<String, Object> result =new HashedMap();

        System.out.println("<<");
        int i=0;
        for(String s:selectStock){
            System.out.println(i+":"+s);
            i++;
        }
        int j=0;
        for(String s:selectTime){
            System.out.println(j+":"+s);
            j++;
        }
        //生成vm
        Root root =new Root();
        Root.SelectStockBean selectStockBean =new Root.SelectStockBean();
        Root.SelectTimeBean selectTimeBean =new Root.SelectTimeBean();
        List<Root.SelectStockBean.FixFilterBean> filter = new ArrayList<Root.SelectStockBean.FixFilterBean>();
        Root.SelectTimeBean.ConditionBean conditionBean =new Root.SelectTimeBean.ConditionBean();
        Root.SelectTimeBean.ParameterBean parameter = new Root.SelectTimeBean.ParameterBean();
        Root.TradeBean trade = new Root.TradeBean();

        if(!selectStock.get(0).equals("")){
            System.out.println("has macd");
            Root.SelectStockBean.FixFilterBean filterBean =new Root.SelectStockBean.FixFilterBean();
            filterBean.setName("MACD");
            filterBean.setComparison(selectStock.get(0));
            filterBean.setLow(NumberUtil.parseDouble(selectStock.get(1)));
            filterBean.setHigh(NumberUtil.parseDouble(selectStock.get(2)));
            filter.add(filterBean);
        }
        if(!selectStock.get(3).equals("")){
            System.out.println("has 行业");
            Root.SelectStockBean.FixFilterBean filterBean =new Root.SelectStockBean.FixFilterBean();
            filterBean.setName("industry");
            filterBean.setValue(selectStock.get(3));
        }
        if(!selectStock.get(4).equals("")){
            System.out.println("has 资产");
            Root.SelectStockBean.FixFilterBean filterBean =new Root.SelectStockBean.FixFilterBean();
            filterBean.setName("资产");
            filterBean.setComparison(selectStock.get(4));
            filterBean.setLow(NumberUtil.parseDouble(selectStock.get(5)));
            filterBean.setHigh(NumberUtil.parseDouble(selectStock.get(6)));
            filter.add(filterBean);
        }
        if(!selectStock.get(7).equals("")){
            System.out.println("has 地域");
            Root.SelectStockBean.FixFilterBean filterBean =new Root.SelectStockBean.FixFilterBean();
            filterBean.setName("area");
            filterBean.setValue(selectStock.get(7));
        }
        if(!selectTime.get(0).equals("")){
            System.out.println("has time macd");
            Root.SelectTimeBean.ConditionBean.CMACDBean cmacdBean =new Root.SelectTimeBean.ConditionBean.CMACDBean();
            cmacdBean.setName("MACD");
            cmacdBean.setComparison(selectTime.get(0));
            cmacdBean.setLow(NumberUtil.parseDouble(selectTime.get(1)));
            cmacdBean.setHigh(NumberUtil.parseDouble(selectTime.get(2)));
            conditionBean.setC_MACD(cmacdBean);
        }
        if(!selectTime.get(3).equals("")){
            System.out.println("has time ma");
            Root.SelectTimeBean.ConditionBean.CMABean cmaBean =new Root.SelectTimeBean.ConditionBean.CMABean();
            cmaBean.setName("MA");
            cmaBean.setComparison(selectTime.get(3));
            cmaBean.setLow(NumberUtil.parseDouble(selectTime.get(4)));
            cmaBean.setHigh(NumberUtil.parseDouble(selectTime.get(5)));
            conditionBean.setC_MA(cmaBean);
        }

        System.out.println("<<");
        int k=0;
        for(String s:strategyTest){
            System.out.println(k+":"+s);
            k++;
        }

        parameter.setBear_to_bull(NumberUtil.parseInt(selectTimePara.get(0)));
        parameter.setBull_to_bear(NumberUtil.parseInt(selectTimePara.get(1)));
        parameter.setBear_position(NumberUtil.parseDouble(selectTimePara.get(2)));

        trade.setCycle(NumberUtil.parseInt(tradePara.get(0)));
        Root.StrategyTestBean strategyTestBean =new Root.StrategyTestBean();
        strategyTestBean.setStart(strategyTest.get(0));
        strategyTestBean.setEnd(strategyTest.get(1));
        strategyTestBean.setReference(strategyTest.get(2));
        strategyTestBean.setInitial_money(NumberUtil.parseDouble(strategyTest.get(3)));


        selectStockBean.setFixFilter(filter);
        root.setSelectStock(selectStockBean);
        selectTimeBean.setParameter(parameter);
        selectTimeBean.setCondition(conditionBean);
        root.setSelectTime(selectTimeBean);
        root.setTrade(trade);
        root.setStrategyTest(strategyTestBean);
        //system
        System.out.println("getBear_to_bull"+root.getSelectTime().getParameter().getBear_to_bull());
        System.out.println("getBull_to_bear"+root.getSelectTime().getParameter().getBull_to_bear());
        System.out.println("getBear_position"+root.getSelectTime().getParameter().getBear_position());

        result.put("status","success");
        return result;

    }
}
