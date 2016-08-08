package model.industry;

/**
 * Created by kylin on 16/6/4.
 * All rights reserved.
 */
public class IndustryVOForSeven extends IndustryVO{

    /**
     * 领头股票信息
     */
    private TypicalStockInfo typicalStockInfo;

    public IndustryVOForSeven(String industryName, String season,
                              IndustryBasicInfo industryBasicInfo, TypicalStockInfo typicalStockInfo) {
        super(industryName, season, industryBasicInfo);
        this.typicalStockInfo = typicalStockInfo;
    }

    public TypicalStockInfo getTypicalStockInfo() {
        return typicalStockInfo;
    }

    @Override
    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        IndustryBasicInfo industryBasicInfo = this.getIndustryBasicInfo();
        stringBuilder.append(industryBasicInfo.getNumberOfstocks()).append("\n");
        stringBuilder.append(industryBasicInfo.getAverageChange()).append("\n");
        stringBuilder.append(industryBasicInfo.getAveragePrice()).append("\n");
        stringBuilder.append(industryBasicInfo.getAverageProfit()).append("\n");
        stringBuilder.append(industryBasicInfo.getTotalAmount()).append("\n");
        stringBuilder.append(industryBasicInfo.getTotalVolume()).append("\n");
        return stringBuilder.toString();
    }
}
