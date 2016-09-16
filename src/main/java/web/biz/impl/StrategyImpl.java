package web.biz.impl;

//import com.sun.tools.corba.se.idl.toJavaPortab.InterfaceGen;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import web.dao.StrategyDao;
import web.dao.StrategyMapper;
import web.model.btAndVt.StrategyPo;
import web.model.enumPo.DeleteState;
import web.model.enumPo.UpdateState;
import web.biz.StrategyService;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by linyufan on 16/9/1.
 */
@Service
public class StrategyImpl implements StrategyService {

    @Autowired
    StrategyDao strategyDao;

    @Override
    public String addStrategy(String userid, String strategyname, String python) {
        strategyDao.addStrategy(userid, python, strategyname);
        String strategyid = strategyDao.getStrategy(userid, strategyname).getStrategyid();
        return strategyid;
    }

    @Override
    public UpdateState updateStrategyName(String strategyid, String strategyname) {
//        strategyMapper.updateStrategyName(userid,strategyid,strategyname);
        strategyDao.updateSname(Integer.parseInt(strategyid), strategyname);
        return UpdateState.修改成功;
    }

    @Override
    public UpdateState updateStrategyPython(String strategyid, String strategypyhton) {
        strategyDao.updatePy(Integer.parseInt(strategyid), strategypyhton);
        return UpdateState.修改成功;
    }

    @Override
    public DeleteState deleteStrategy(String strategyid) {
        strategyDao.deleteStrategy(Integer.parseInt(strategyid));
        return DeleteState.删除成功;
    }

    @Override
    public StrategyPo selectStrategy(String Strategyid) {
        StrategyPo strategyPo = strategyDao.getStrategy(Integer.parseInt(Strategyid));
        return  strategyPo;
    }

    @Override
    public List<StrategyPo> getAllStategy(String userid) {
        List<StrategyPo> temp = strategyDao.queryStrategy(userid);
        return  temp;
    }
}
