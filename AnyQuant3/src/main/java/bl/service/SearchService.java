package bl.service;

import model.stock.MySearchResult;

import java.util.List;

/**
 * Created by kylin on 16/6/4.
 * All rights reserved.
 */
public interface SearchService {

    /**
     * 根据界面输入的关键字返回搜索到的 股票名称,代码
     *
     * @param input 关键字
     * @return 搜索到的 股票名称,代码
     */
    List<MySearchResult> searchStock(String input);

}
