package web.dao.impl;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import web.dao.BackTestDao;
import web.dao.BackTestMapper;
import web.model.btAndVt.BackTestDailyResultPo;

import java.util.ArrayList;

/**
 * Created by linyufan on 16/9/16.
 */

@SuppressWarnings("restriction")
@Repository("BackTestMapper")
@Transactional
public class BackTestDaoImpl implements BackTestMapper{



    @Override
    public ArrayList<BackTestDailyResultPo> getResult(@Param("listname") String resultid) {

        return null;
    }

    @Override
    public String getResultid(String userid, String strategyid, String startdate, String enddate) {
        return null;
    }
}
