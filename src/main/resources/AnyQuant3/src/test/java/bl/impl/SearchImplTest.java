package bl.impl;

import model.stock.MySearchResult;
import org.junit.Test;

import java.util.List;

/**
 * Created by kylin on 16/6/6.
 * All rights reserved.
 */
public class SearchImplTest {
    SearchImpl search = new  SearchImpl();

    @Test
    public void searchStock() throws Exception {

        String input = "你好";
        String big1 = "你好北京";
        String big2 = "北京你好北京";
        String big3 = "你北京好";

        System.out.println(big1.contains(input));
        System.out.println(big2.contains(input));
        System.out.println(big3.contains(input));

    }

    @Test
    public void searchStock2() throws Exception {
        //中文搜索
        List<MySearchResult> results = search.searchStock("啤酒");
        for (MySearchResult result:results){
            System.out.println(result.getStockName());
            System.out.println(result.getStockNumber());
        }
        System.out.println();
        //英文全代码搜索
        results = search.searchStock("sh600519");
        for (MySearchResult result:results){
            System.out.println(result.getStockName());
            System.out.println(result.getStockNumber());
        }
        System.out.println();
        //代码搜索
        results = search.searchStock("6005");
        for (MySearchResult result:results){
            System.out.println(result.getStockName());
            System.out.println(result.getStockNumber());
        }
    }

}