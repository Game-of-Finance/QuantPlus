package web.dao.stub;



import web.dao.BackTestDao;
import web.model.strategy.BackTest;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;


/**
 * Created by Administrator on 2016/8/14 0014.
 */
public class BackTestDaoStub implements BackTestDao {
    static SimpleDateFormat timeformatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    static SimpleDateFormat dateformatter = new SimpleDateFormat("yyyy-MM-dd");
    private static Date parseTime(String string) throws ParseException {
        return timeformatter.parse(string);
    }
    private static Date parseDate(String string) throws ParseException {
        return dateformatter.parse(string);
    }


    static List<BackTest> backTests ;
    static {
        backTests =new ArrayList<BackTest>();

        try {
            BackTest backTest1 =new BackTest(1,1,"python 1",parseTime("2016-08-13 20:00:00"),15000,
                    parseDate("2015-08-01"),parseDate("2016-08-01"),BackTest.EACH_DAY,1500L,0.32,0.18);
            BackTest backTest2 =new BackTest(2,1,"python 1",parseTime("2016-08-13 20:00:00"),10000,
                    parseDate("2015-08-01"),parseDate("2016-08-01"),BackTest.EACH_DAY);
            BackTest backTest3 =new BackTest(3,1,"python 1",parseTime("2016-08-13 20:00:00"),10000,
                    parseDate("2015-08-01"),parseDate("2016-08-01"),BackTest.EACH_DAY);
            BackTest backTest4 =new BackTest(4,2,"python 2",parseTime("2016-08-13 20:00:00"),10000,
                    parseDate("2015-08-01"),parseDate("2016-08-01"),BackTest.EACH_DAY);
            BackTest backTest5 =new BackTest(5,2,"python 2",parseTime("2016-08-13 20:00:00"),10000,
                    parseDate("2015-08-01"),parseDate("2016-08-01"),BackTest.EACH_DAY);
            BackTest backTest6 =new BackTest(6,2,"python 2",parseTime("2016-08-13 20:00:00"),10000,
                    parseDate("2015-08-01"),parseDate("2016-08-01"),BackTest.EACH_DAY);
            BackTest backTest7 =new BackTest(7,3,"python 3",parseTime("2016-08-13 20:00:00"),10000,
                    parseDate("2015-08-01"),parseDate("2016-08-01"),BackTest.EACH_DAY);
            BackTest backTest8 =new BackTest(8,4,"python 4",parseTime("2016-08-13 20:00:00"),10000,
                    parseDate("2015-08-01"),parseDate("2016-08-01"),BackTest.EACH_DAY);
            backTests.add(backTest1);
            backTests.add(backTest2);
            backTests.add(backTest3);
            backTests.add(backTest4);
            backTests.add(backTest5);
            backTests.add(backTest6);
            backTests.add(backTest7);
            backTests.add(backTest8);
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }


    public Set<BackTest> getBackTests(int strategyId){
        Set<BackTest> result =new HashSet<BackTest>();
        for(BackTest backTest:backTests){
            if(backTest.getStrategyId()==strategyId){
                result.add(backTest);
            }
        }
        return  result;
    }


}
