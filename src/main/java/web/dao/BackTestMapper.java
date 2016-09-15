package web.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import web.model.btAndVt.BackTestDailyResultPo;

import java.util.ArrayList;

/**
 * Created by linyufan on 16/9/7.
 */

@Repository
public interface BackTestMapper {

    public String getJson(String userid, String strategyid);

    public void setPython(String userid, String strategyid, String python_text);

    public ArrayList<BackTestDailyResultPo> getResult(@Param("listname") String resultid);

    public String getResultid(String userid, String strategyid, String startdate, String enddate);


}
