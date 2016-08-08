package util.constant;

import util.time.DateCount;

/**
 * Created by kylin on 16/6/1.
 * All rights reserved.
 */
public class ControllerValue {

    public static final int numOfDate = 300;

    //终点是今天
    public static final String today = DateCount.getToday();

    //起点暂时取300天以前
    public static final String startDate = DateCount.count(today, -numOfDate);
    
}
