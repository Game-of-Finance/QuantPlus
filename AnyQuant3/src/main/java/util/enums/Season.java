package util.enums;

/**
 * Created by Lin on 2016/6/3.
 */
public enum Season {
    FIRST(1,"第一季度"),SECOND(2,"第二季度"),THIRD(3,"第三季度"),FOURTH(4,"第四季度"),ZERO(0,"第四季度");

    int number;
    String name;

    Season(int number, String name) {
        this.number = number;
        this.name = name;
    }

    public int getNumber() {
        return number;
    }

    public String getName() {
        return name;
    }

    public static String getName(int num){
        Season[] seasons = Season.values();
        for(int i = 0;i<seasons.length;i++){
            if(seasons[i].getNumber()==num){
                return seasons[i].getName();
            }
        }

        return "";
    }
}
