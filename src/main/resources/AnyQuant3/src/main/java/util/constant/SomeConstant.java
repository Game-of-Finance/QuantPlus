package util.constant;

/**
 * Created by JiachenWang on 2016/3/8.
 */
public class SomeConstant {
    public static class ui{
        public static final double TitleHeight = 70;
        public static final double LeftTabsWidth = 179;
        public static final double ResizePadding = 14;

        public static final double MinStageWidth = 1146;
        public static final double MinStageHeight = 611;

        public static final double LoginWidth = 968;
        public static final double LoginHeight = 700;
    }
    public static class stocknumber{
        //大盘编号
        public static final String market = "hs300";
    }

    public static class field{
        public static final String open = "open";
        public static final String close = "close";
        public static final String high = "high";
        public static final String low = "low";
        public static final String volume = "volume";
        public static final String adj_price = "adj_price";
        public static final String turnover = "turnover";
        public static final String pe_ttm = "pe_ttm";
        public static final String pb = "pb";
        public static final String all="open+close+high+low+volume+adj_price+turnover+pe_ttm+pb";
    }
}
