package util.enums;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Seven on 16/4/1.
 */
public enum IndustryPeriodEnum{

    SECOND2016("201602"),
    FIRST2016("201601"),
    FOURTH("201504"),
    THIRD("201503"),
    SECOND("201502");

    String periodName;

    IndustryPeriodEnum(String season){
        periodName=season;
    }

    public static IndustryPeriodEnum getPeriodEnum(String season){
        IndustryPeriodEnum[] periods=IndustryPeriodEnum.values();
        for(int i = 0;i<periods.length;i++){
            if(periods[i].getName().equals(season)){
                return periods[i];
            }
        }
        return IndustryPeriodEnum.FOURTH;
    }

    public String getName(){
        return periodName;
    }

    public String toString() {
        switch (periodName) {
            case "201601":
                return "2016年第一季度";
            case "201504":
                return "2015年第四季度";
            case "201503":
                return "2015年第三季度";
            case "201502":
                return "2015年第二季度";
        }
        return "2016-01-01";
    }

    public static String getStartDate(IndustryPeriodEnum period) {
        switch (period) {
            case FIRST2016:
                return "2016-01-01";
            case SECOND:
                return "2015-04-01";
            case THIRD:
                return "2015-07-01";
            case FOURTH:
                return "2015-10-01";
        }
        return "2016-01-01";
    }

    /**
     * 获得所有季度
     * 不包括second2016（下一个季度）
     * @return
     */
    public static List<IndustryPeriodEnum> getAllPeriod(){
        return new ArrayList<IndustryPeriodEnum>(){
            {
                add(IndustryPeriodEnum.FIRST2016);
                add(IndustryPeriodEnum.FOURTH);
                add(IndustryPeriodEnum.THIRD);
                add(IndustryPeriodEnum.SECOND);
            }
        };
    }

    public static String getNextPeriod(){
        return SECOND2016.getName();
    }

}
