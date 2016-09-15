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
    @RequestMapping(value = "newStrategy", method = RequestMethod.POST)
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
        Root.SelectTimeBean.ParameterBean parameter = new Root.SelectTimeBean.ParameterBean();
        Root.TradeBean trade = new Root.TradeBean();
        for(String s:selectStock){
            String[] split = s.split(",");
            Root.SelectStockBean.FilterBean filterBean = new Root.SelectStockBean.FilterBean();
            filterBean.setName(split[0]);
            filter.add(filterBean);
        }
        for(String s:selectTime){

        }
        parameter.setBear_to_bull(NumberUtil.parseInt(selectTimePara.get(0)));
        parameter.setBull_to_bear(NumberUtil.parseInt(selectTimePara.get(1)));
        parameter.setBear_position(NumberUtil.parseDouble(selectTimePara.get(2)));
//        trade.setCycle(NumberUtil.parseInt(tradePara.get(0)));

        selectStockBean.setFilter(filter);
        root.setSelectStock(selectStockBean);
        selectTimeBean.setParameter(parameter);
        root.setSelectTime(selectTimeBean);
        root.setTrade(trade);
        //system
        System.out.println("getBear_to_bull"+root.getSelectTime().getParameter().getBear_to_bull());
        System.out.println("getBull_to_bear"+root.getSelectTime().getParameter().getBull_to_bear());
        System.out.println("getBear_position"+root.getSelectTime().getParameter().getBear_position());
        return result;

    }
}
