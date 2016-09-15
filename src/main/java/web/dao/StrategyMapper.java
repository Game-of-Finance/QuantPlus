package web.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import web.model.btAndVt.StrategyPo;

import java.util.ArrayList;

/**
 * Created by linyufan on 16/9/1.
 */
@Repository
public interface StrategyMapper {
    //1
    public void addStrategy(@Param("userid") String userid, @Param("name") String strategyname, @Param("json") String json, @Param("python") String python, @Param("isjson") String isjson);

    public String getIDByName(@Param("userid") String userid, @Param("name") String strategyname);

    //2
    public void updateStrategyName(String userid, String strategyid, String strategyname);

    //3
    public void updateStrategyPython(String userid, String strategyid, String strategypyhton);

    //4
    public void updateStrategyJson(String userid, String strategyid, String strategyjson);

    //5
    public void deleteStrategy(String userid, String strategyid);

    //6
    public StrategyPo selectStrategy(String userid, String Strategyid);

    //7
    public ArrayList<StrategyPo> getAllStategy(String userid);

}
