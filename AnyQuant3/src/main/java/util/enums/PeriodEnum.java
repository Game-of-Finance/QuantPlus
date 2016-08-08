package util.enums;

/**
 * Created by Seven on 16/3/16.
 */
public enum PeriodEnum {

    MONTH(24,"月"),WEEK(12,"周"),FIVEDAY(9,"五"),THREEDAY(6,"三"),
    DAY(2,"日"),SECOND(0,"秒"),OTHER(-1,"其他");

    String periodName;
    int num;

    PeriodEnum(int n,String s) {
        periodName = s;
        num = n;
    }

//    public String getPeriod(String period){
//        return PeriodEnum.valueOf(period).toString();
//    }

    public static PeriodEnum getPeriodEnum(String period){
        PeriodEnum[] periods = PeriodEnum.values();
        for(int i = 0;i<periods.length;i++){
            if(periods[i].getName().equals(period)){
                return periods[i];
            }
        }
        return PeriodEnum.DAY;
    }

    public String getName(){return periodName;}

    public int getNum(){return num;}


}
