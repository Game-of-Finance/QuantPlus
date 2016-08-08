package bl.impl;

import bl.service.SearchService;
import data.dataservice.StockDataService;
import data.factory.DataFactory;
import model.stock.MySearchResult;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by kylin on 16/6/4.
 * All rights reserved.
 */
public class SearchImpl implements SearchService{

    private StockDataService stockDataService;

    private HashMap<String,String> nameAndNumber;

    public SearchImpl() {
        this.stockDataService = DataFactory.getInstance().getStockDataService();
    }

    @Override
    public List<MySearchResult> searchStock(String input) {
        if(this.nameAndNumber == null){
            this.nameAndNumber = stockDataService.getStockNameAndNumber();
        }

        List<MySearchResult> results = new ArrayList<>();
        //中文
        if(!input.matches("^[a-z0-9A-Z]+$")){
            //根据中文名字搜索符合的股票代码
            this.nameAndNumber.keySet().stream().filter(name -> name.contains(input)).forEach(name -> {
                String number = this.nameAndNumber.get(name);
                results.add(new MySearchResult(number, name));
            });
            //英文或者数字
        }else{
            for (Map.Entry<String,String> nameNumber:this.nameAndNumber.entrySet()){
                //判断代码是否包含输入
                String number = nameNumber.getValue();
                if(number.contains(input)){
                    String name = nameNumber.getKey();
                    results.add(new MySearchResult(number, name));
                }
            }
        }
        //size = 0 if found nothing
        return results;
    }
}
