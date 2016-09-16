package web.biz;

import org.junit.Test;
import web.biz.impl.StrategyImpl;
import web.model.btAndVt.StrategyPo;

import javax.annotation.Resource;
import javax.swing.*;

/**
 * Created by NJU on 2016/9/16.
 */
public class StrategyTest {

    @Test
    public void test() {
        StrategyService strategyService = new StrategyImpl();
        StrategyPo strategyPo = strategyService.selectStrategy("108");
        System.out.println(strategyPo.getPyTest());
    }
}
