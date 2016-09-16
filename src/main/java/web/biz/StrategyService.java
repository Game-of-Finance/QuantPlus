package web.biz;

import web.model.btAndVt.StrategyPo;
import web.model.enumPo.DeleteState;
import web.model.enumPo.UpdateState;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by linyufan on 16/7/23.
 */
public interface StrategyService {

    //// TODO: 16/9/1

    /**
     * 新建策略
     * @param userid
     * @param strategyname
     * @return
     */
    public String addStrategy(String userid, String strategyname, String py_text);

    /**
     * 更新策略
     * @param strategyid
     * @return
     */
    public UpdateState updateStrategyName(String strategyid, String strategyname);

    public UpdateState updateStrategyPython(String strategyid, String py_text);



    /**
     * 删除策略
     * @param strategyid
     * @return
     */
    public DeleteState deleteStrategy(String strategyid);

//    public void jsonToPython(String json);

    /**
     * 获取策略
     * @param Strategyid
     * @return
     */
    public StrategyPo selectStrategy(String Strategyid);

    /**
     * 获取所有策略
     *
     * @param userid
     * @return
     */
    public List<StrategyPo> getAllStategy(String userid);

}
