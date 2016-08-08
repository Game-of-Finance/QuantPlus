package bl.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import model.market.MarketVO;
import model.stock.OneDayInfo;
import util.exception.NotFoundException;

import java.util.List;

/**
 * Created by kylin on 16/6/1.
 * All rights reserved.
 */
public interface MarketService {

    /**
     * 根据大盘的名称获取股票
     *
     * @param marketName 大盘名称
     * @return
     */
    List<OneDayInfo> getStockInMarket(String marketName);

    /**
     * 根据大盘代码获取大盘数据
     *
     * @param marketNumber 大盘代码
     * @return
     */
    MarketVO getMarket(String marketNumber) throws NotFoundException, JsonProcessingException;


    /**
     * 根据股票的代码获取所处大盘的代码
     *
     * @param stockNumber 股票代码
     * @return
     */
    String marketNumber(String stockNumber);
}
