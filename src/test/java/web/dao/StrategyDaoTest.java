package web.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import web.dao.impl.StrategyDaoImpl;
import web.model.btAndVt.StrategyPo;

import java.util.List;

/**
 * Created by NJU on 2016/9/16.
 */
//@RunWith(SpringJUnit4ClassRunner.class )
//@ContextConfiguration(locations = "classpath:WEB-INF/applicationContext.xml")
public class StrategyDaoTest {
//    @Autowired
//    StrategyDao strategyDao;

    @Test
    public void test() {
        StrategyDao strategyDao = new StrategyDaoImpl();
//        strategyDao.addStrategy("1", "test_content", "huangyong");
        StrategyPo strategyPo = strategyDao.getStrategy(108);
        System.out.println(strategyPo.getUserid());
        System.out.println(strategyPo.getStrategyid());
        System.out.println(strategyPo.getPyTest());
        System.out.println(strategyPo.getSname());
        System.out.println(strategyPo.getUpdateAt());
    }

    @Test
    public void test2() {
        StrategyDao strategyDao = new StrategyDaoImpl();
        List<StrategyPo> poList = strategyDao.queryStrategy("2");
        for (int i=0;i<poList.size();i++) {
            System.out.println(poList.get(i).getStrategyid());
        }
    }

//    @Test
//    public void test3() {
////        StrategyDao strategyDao = new StrategyDaoImpl();
//        System.out.println(strategyDao.getStrategy("2", "huangyong").getPyTest());
//    }

}
