package model.industry;

/**
 * Created by kylin on 16/3/31.
 */
public class IndustryVO {

    /**
     * 行业名称
     */
    private String industryName;

    /**
     * 时间季度
     */
    private String season;

    /**
     * 行业统计信息
     */
    private IndustryBasicInfo industryBasicInfo;

    public IndustryVO(String industryName, String season, IndustryBasicInfo industryBasicInfo) {
        this.industryName = industryName;
        this.season = season;
        this.industryBasicInfo = industryBasicInfo;
    }

    public String getIndustryName() {
        return industryName;
    }

    public String getSeason() {
        return season;
    }

    public IndustryBasicInfo getIndustryBasicInfo() {
        return industryBasicInfo;
    }
}
