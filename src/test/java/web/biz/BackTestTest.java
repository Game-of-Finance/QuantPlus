package web.biz;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import web.biz.impl.BackTestImpl;
import web.dao.BackTestMapper;
import web.dao.impl.BackTestDaoImpl;
import web.model.btAndVt.BackTestResultPo;
import web.model.strategy.BackTest;

import javax.annotation.Resource;

/**
 * Created by linyufan on 16/9/16.
 *
 */
//@RunWith(SpringJUnit4ClassRunner.class)     //表示继承了SpringJUnit4ClassRunner类
//@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})

public class BackTestTest {

    @Resource
    BackTestService backTestService ;



    @Test
    public void test(){
        BackTestResultPo backTestResultPo = backTestService.runPythonBackTest("1","2","2015-6-1","2016-6-1",100000);
        System.out.println(backTestResultPo);
    }

    @Test
    public void test1(){
        BackTestMapper backTestMapper = new BackTestDaoImpl() ;
        System.out.println(backTestMapper.getResultid("2","1","2015-6-1","2016-6-1"));

    }

}
