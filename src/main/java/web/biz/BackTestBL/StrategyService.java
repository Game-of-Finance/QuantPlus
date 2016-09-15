package web.biz.BackTestBL;

import web.model.btAndVt.StrategyPo;
import web.model.enumPo.DeleteState;
import web.model.enumPo.UpdateState;

import java.util.ArrayList;

/**
 * Created by linyufan on 16/7/23.
 */
public interface StrategyService {

    //// TODO: 16/9/1

    /**
     * 新建策略
     * @param userid
     * @param strategyname
     * @param json
     * @return
     */
    public String addStrategy(String userid, String strategyname, String json, String python);

    /**
     * 更新策略
     * @param userid
     * @param strategyid
     * @return
     */
    public UpdateState updateStrategyName(String userid, String strategyid, String strategyname);

    public UpdateState updateStrategyPython(String userid, String strategyid, String strategypyhton);

    public UpdateState updateStrategyJson(String userid, String strategyid, String strategyjson);


    /**
     * 删除策略
     * @param userid
     * @param strategyid
     * @return
     */
    public DeleteState deleteStrategy(String userid, String strategyid);

//    public void jsonToPython(String json);

    /**
     * 获取策略
     * @param userid
     * @param Strategyid
     * @return
     */
    public StrategyPo selectStrategy(String userid, String Strategyid);

    /**
     * 获取所有策略
     *
     * @param userid
     * @return
     */
    public ArrayList<StrategyPo> getAllStategy(String userid);

}
