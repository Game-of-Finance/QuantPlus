package web.servlet;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import web.model.strategy.Root;

import java.util.List;
import java.util.Map;

@Controller
public class StrategyController {
    @RequestMapping(value = "newStrategy", method = RequestMethod.POST)
    public String newStrategy(@RequestParam List<String> selectStock,
                                    @RequestParam List<String> selectTime,
                                    @RequestParam List<String> selectTimePara) {
        Map<String, Object> result =new HashedMap();

        //生成vm
        Root root =new Root();
        List<Root.SelectStockBean.FilterBean> filter = root.getSelectStock().getFilter();
         for(String s:selectStock){
            String[] split = s.split(",");
            Root.SelectStockBean.FilterBean filterBean = new Root.SelectStockBean.FilterBean();
            filterBean.setName(split[0]);
            filter.add(filterBean);
        }
        for(String s:selectTime){

        }
        for(String s:selectTimePara){
        }


        return "SUCCESS";

    }
}
