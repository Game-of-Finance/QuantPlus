package util.time;

import org.junit.Before;
import org.junit.Test;

import java.util.Date;
import java.util.List;


/**
 * Created by kylin on 16/5/19.
 */
public class DateCountTest {
    @Before
    public void setUp() throws Exception {

    }

    @Test
    public void strToDate() throws Exception {
        DateCount.strToDate("2015-03-01");
    }

    @Test
    public void getWeekOfDate() throws Exception {
        DateCount.getWeekOfDate("2015-05-21");
    }

    @Test
    public void dateToStr() throws Exception {
        DateCount.dateToStr(new Date());
    }

    @Test
    public void count() throws Exception {
        DateCount.count("2016-05-21",-21);
    }

    @Test
    public void splitDays() throws Exception {
        DateCount.splitDays("2016-04-01","2016-04-30");
    }

    @Test
    public void getSeconds() throws Exception {
        DateCount.getSeconds("18:20:00","18:21:00",3);
    }

    @Test
    public void getintervalDays() throws Exception {
        int num = DateCount.getintervalDays("2015-07-26","2016-05-21");
        System.out.println(num);
    }

    @Test
    public void getLastDayOfMonth() throws Exception {
        DateCount.getLastDayOfMonth("2016-05-21");
    }

    @Test
    public void getRecentWorkDay() throws Exception {
        DateCount.getRecentWorkDay();
    }

    @Test
    public void getLastSeasons() throws Exception {
        List<String> seasons = DateCount.getLastSeasons(6);
        seasons.forEach(System.out::println);
    }

}