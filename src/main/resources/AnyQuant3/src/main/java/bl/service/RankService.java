package bl.service;

import model.analyse.RiseAndFallVO;
import model.stock.OneDayInfo;

import java.util.List;

/**
 * Created by kylin on 16/6/4.
 * All rights reserved.
 */
public interface RankService {

    /**
     * 获取所有股票涨跌幅排行榜
     *
     * @return 按照涨到跌(正到负)排序的股票
     */
    List<RiseAndFallVO> getStockRiseList();

    /**
     * 获取所有行业涨跌幅排行榜
     *
     * @return 按照涨到跌排序的行业
     */
    List<RiseAndFallVO> getIndustryRiseList();

    /**
     * 获取改行业内部股票涨跌幅排行榜
     *
     * @return 按照涨到跌排序的行业
     */
    List<OneDayInfo> getStockRiseList(String indusName);


}
