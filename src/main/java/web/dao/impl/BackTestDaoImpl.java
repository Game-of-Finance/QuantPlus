package web.dao.impl;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import web.dao.BackTestDao;
import web.dao.BackTestMapper;
import web.dao.util.BackTestOperation;
import web.dao.util.MybatisUtils;
import web.model.btAndVt.BackTestDailyResultPo;

import java.util.ArrayList;

/**
 * Created by linyufan on 16/9/16.
 */

@SuppressWarnings("restriction")
@Repository("BackTestMapper")
@Transactional
public class BackTestDaoImpl implements BackTestMapper{

    SqlSession sqlSession;
    BackTestOperation backTestOperation;


    public ArrayList<BackTestDailyResultPo> getResult(@Param("listname") String resultid) {
        ArrayList<BackTestDailyResultPo> backTestDailyResultPos = new ArrayList<>();
        try {
            sqlSession = MybatisUtils.getSession();
            backTestOperation = sqlSession.getMapper(BackTestOperation.class);
            backTestDailyResultPos = backTestOperation.getResult(resultid);
            sqlSession.commit();
        }catch (Exception e) {
            e.printStackTrace();
            sqlSession.rollback();
        } finally {
            sqlSession.close();
        }
        return backTestDailyResultPos;
    }

    @Override
    public String getResultid(String userid, String strategyid, String startdate, String enddate) {
        String id = "";
        try {
            sqlSession = MybatisUtils.getSession();
            backTestOperation = sqlSession.getMapper(BackTestOperation.class);
            id = backTestOperation.getResultid(userid,strategyid,startdate,enddate);
            sqlSession.commit();
        }catch (Exception e) {
            e.printStackTrace();
            sqlSession.rollback();
        } finally {
//            sqlSession.close();
        }
        return id;
    }
}
