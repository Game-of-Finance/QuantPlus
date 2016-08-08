package bl.impl;

import bl.factory.RankSingleton;
import bl.service.RankService;
import model.analyse.RiseAndFallVO;
import model.stock.OneDayInfo;
import org.junit.Test;
import util.exception.NotFoundException;

import java.util.List;

/**
 * Created by kylin on 16/6/4.
 * All rights reserved.
 */
public class RankImplTest {

    public RankImplTest() throws NotFoundException {
    }

    @Test
    public void getStockRiseList() throws Exception {
        RankService rank = RankSingleton.getRankService();

        List<RiseAndFallVO> riseAndFallVOs = rank.getStockRiseList();

        for (RiseAndFallVO vo:riseAndFallVOs){
            System.out.println(vo.getRiseStr());
            System.out.println(vo.getName());
        }
    }

    @Test
    public void getAllIndustryRiseList() throws Exception {
        RankService rank = RankSingleton.getRankService();
        List<RiseAndFallVO> riseAndFallVOs = rank.getIndustryRiseList();
        int size = riseAndFallVOs.size();

        for (RiseAndFallVO vo:riseAndFallVOs){
            System.out.println(vo.getRiseStr());
            System.out.println(vo.getName());
        }
    }

    @Test
    public void getOneIndustryRiseList() throws Exception {
        RankService rank = RankSingleton.getRankService();
        List<OneDayInfo> riseAndFallVOs = rank.getStockRiseList("酿酒行业");
        System.out.println("行业内部股票数目:"+riseAndFallVOs.size());
        for (OneDayInfo vo:riseAndFallVOs){
            System.out.println(vo.getName());
            System.out.println(vo.getChange());
        }
    }


}