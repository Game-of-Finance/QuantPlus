package model.industry;

import java.util.List;

/**
 * Created by kylin on 16/6/4.
 * All rights reserved.
 */
public class IndustryPack {

    List<IndustryVO> industrySeasonVO;

    public IndustryPack(List<IndustryVO> industrySeasonVO) {
        this.industrySeasonVO = industrySeasonVO;
    }

    public List<IndustryVO> getIndustrySeasonVO() {
        return industrySeasonVO;
    }
}
