package web.dao.stub;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import web.dao.StrategyDao;
import web.model.strategy.Strategy;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;



@SuppressWarnings("restriction")
@Repository("strategyDao")
@Transactional
public class StrategyDaoStub implements StrategyDao {


    static SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    private static Date parseDate(String string) throws ParseException {
        return formatter.parse(string);
    }

    static List<Strategy> strategies;

    static {
        strategies =new ArrayList<Strategy>();
        try {
            Strategy strategy1 = new Strategy(1,"name_a",1,parseDate("2016-08-12 20:00:00"));
            strategy1.addBackTest(1);
            strategy1.addBackTest(2);
            strategy1.addBackTest(3);
            Strategy strategy2 =new Strategy(2,"name_b",1,parseDate("2016-08-12 21:00:00"));
            strategy2.addBackTest(4);
            strategy2.addBackTest(5);
            strategy2.addBackTest(6);
            Strategy strategy3 =new Strategy(3,"name_c",1,parseDate("2016-08-12 22:00:00"));
            strategy3.addBackTest(7);



            Strategy strategy4 =new Strategy(5,"name_e",2,parseDate("2016-08-12 20:00:00"));
            strategy4.addBackTest(8);
            Strategy strategy5 =new Strategy(6,"name_f",2,parseDate("2016-08-12 21:00:00"));
            Strategy strategy6 =new Strategy(7,"name_g",2,parseDate("2016-08-12 22:00:00"));


            strategies.add(strategy1);
            strategies.add(strategy2);
            strategies.add(strategy3);
            strategies.add(strategy4);
            strategies.add(strategy5);
            strategies.add(strategy6);
        } catch (ParseException e) {
            e.printStackTrace();
        }






    }


    public List<Strategy> queryStrategy(int userId) {
        List<Strategy> result =new ArrayList<Strategy>();
        for(Strategy strategy :strategies){
            if(strategy.getUserId()==userId){
                result.add(strategy);
            }
        }
        return  result;
    }


    public Strategy getStrategy(int strategyId){
        for(Strategy strategy :strategies){
            if(strategy.getId()==strategyId){
                return strategy;
            }
        }
        return null;
    }


    public boolean addStrategy(Strategy strategy) {
        strategies.add(strategy);
        return true;
    }


    public boolean deleteStrategy(int strategyId) {
        Strategy delete = null;
        for(Strategy k:strategies){
            if(k.getId()==strategyId){
                delete =k;
            }
        }

        strategies.remove(delete);
        return true;
    }




    public boolean updateStrategy(Strategy strategy) {
        Strategy update = null;
        for(Strategy k:strategies){
            if(k.getId()==strategy.getId()){
                update =k;
            }
        }
        strategies.remove(update);
        strategies.add(strategy);
        return true;
    }


}
