package web.dao.util;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import web.model.btAndVt.BackTestDailyResultPo;

import java.util.ArrayList;

/**
 * Created by linyufan on 16/9/16.
 */
public interface BackTestOperation {


    @Select( "SELECT * FROM ${listname}")
    public ArrayList<BackTestDailyResultPo> getResult(@Param("listname") String resultid);

    @Select(" SELECT resultid FROM backtesting WHERE userid = #{0,jdbcType=BIGINT} AND sid = #{1,jdbcType=BIGINT} AND start = #{2,jdbcType=LONGVARCHAR}\n" +
            "        AND end = #{3,jdbcType=LONGVARCHAR}")
    public String getResultid(String userid, String strategyid, String startdate, String enddate);
}
