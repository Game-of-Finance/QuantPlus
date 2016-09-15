package web.biz.impl.BackTestBL;

//import com.sun.tools.corba.se.idl.toJavaPortab.InterfaceGen;
import org.springframework.stereotype.Service;
import web.dao.StrategyMapper;
import web.model.btAndVt.StrategyPo;
import web.model.enumPo.DeleteState;
import web.model.enumPo.UpdateState;
import web.biz.StrategyService;

import javax.annotation.Resource;
import java.util.ArrayList;

/**
 * Created by linyufan on 16/9/1.
 */
@Service("strategyImpl")
public class StrategyImpl implements StrategyService {

    @Resource
    public StrategyMapper strategyMapper;


    @Override
    public String addStrategy(String userid, String strategyname, String json,String python) {
        String isJson = "1";
        if(json==null) {
            isJson = "0";
        }
        strategyMapper.addStrategy(userid,strategyname+"0",json,python,isJson);
        String strategyid = strategyMapper.getIDByName(userid,strategyname);
        return strategyid;
    }

    @Override
    public UpdateState updateStrategyName(String userid, String strategyid, String strategyname) {
        strategyMapper.updateStrategyName(userid,strategyid,strategyname);
        return UpdateState.修改成功;
    }

    @Override
    public UpdateState updateStrategyPython(String userid, String strategyid, String strategypyhton) {
        strategyMapper.updateStrategyPython(userid,strategyid,strategypyhton);
        return UpdateState.修改成功;
    }

    @Override
    public UpdateState updateStrategyJson(String userid, String strategyid, String strategyjson) {
        strategyMapper.updateStrategyJson(userid,strategyid,strategyjson);
        return UpdateState.修改成功;
    }

    @Override
    public DeleteState deleteStrategy(String userid, String strategyid) {
        strategyMapper.deleteStrategy(userid,strategyid);
        return DeleteState.删除成功;
    }

    @Override
    public StrategyPo selectStrategy(String userid, String Strategyid) {
        StrategyPo strategyPo = strategyMapper.selectStrategy(userid,Strategyid);

        return strategyPo;
    }

    @Override
    public ArrayList<StrategyPo> getAllStategy(String userid) {
        ArrayList<StrategyPo> temp = strategyMapper.getAllStategy(userid);
        return temp;
    }
}
