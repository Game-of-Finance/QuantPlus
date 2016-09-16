package web.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import web.dao.StrategyDao;
import web.dao.util.MybatisUtils;
import web.dao.util.PostOperation;
import web.dao.util.StrategyOperation;
import web.model.btAndVt.StrategyPo;
import web.model.strategy.Strategy;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by NJU on 2016/9/16.
// */
@SuppressWarnings("restriction")
@Repository("strategyDao")
@Transactional
public class StrategyDaoImpl implements StrategyDao {

    SqlSession session;
    StrategyOperation strategyOperation;

    @Override
    public List<StrategyPo> queryStrategy(String userId) {
        List<StrategyPo> list = new ArrayList<StrategyPo>();
        try {
            session = MybatisUtils.getSession();
            strategyOperation = session
                    .getMapper(StrategyOperation.class);
            list = strategyOperation.queryStrategy(userId);
            session.commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.rollback();
        } finally {
            session.close();
        }
        return list;
    }

    @Override
    public StrategyPo getStrategy(int sid) {
        StrategyPo strategyPo = null;

        try {
            session = MybatisUtils.getSession();
            System.out.println(session);
            strategyOperation = session.getMapper(StrategyOperation.class);
            strategyPo = strategyOperation.getStrategy(sid);
            System.out.println(strategyPo.getUserid());
            session.commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.rollback();
        } finally {
            session.close();
        }
        return strategyPo;
    }

    @Override
    public boolean addStrategy(String userid, String py_text, String sname) {
        try {
            session = MybatisUtils.getSession();
            strategyOperation = session.getMapper(StrategyOperation.class);
            strategyOperation.addStrategy(userid, py_text, sname);
            session.commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.rollback();
        } finally {
            session.close();
        }
        return true;
    }

    @Override
    public boolean deleteStrategy(int sid) {
        try {
            session = MybatisUtils.getSession();
            strategyOperation = session.getMapper(StrategyOperation.class);
            strategyOperation.deleteStrategy(sid);
            session.commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.rollback();
        } finally {
            session.close();
        }
        return true;
    }

    @Override
    public boolean updatePy(int sid, String py_text) {
        try {
            session = MybatisUtils.getSession();
            strategyOperation = session.getMapper(StrategyOperation.class);
            strategyOperation.updatePy(sid, py_text);
            session.commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.rollback();
        } finally {
            session.close();
        }
        return true;
    }

    @Override
    public boolean updateSname(int sid, String sname) {
        try {
            session = MybatisUtils.getSession();
            strategyOperation = session.getMapper(StrategyOperation.class);
            strategyOperation.updateSname(sid, sname);
            session.commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.rollback();
        } finally {
            session.close();
        }
        return true;
    }
//
//    @Override
//    public boolean updatePy(String py_text, String userid, String sname) {
//        try {
//            session = MybatisUtils.getSession();
//            strategyOperation = session.getMapper(StrategyOperation.class);
//            strategyOperation.updatePy(py_text, userid, sname);
//            session.commit();
//        } catch (Exception e) {
//            e.printStackTrace();
//            session.rollback();
//        } finally {
//            session.close();
//        }
//        return true;
//    }
//
//    @Override
//    public boolean updateSname(String afterName, String userid, String beforeName) {
//        try {
//            session = MybatisUtils.getSession();
//            strategyOperation = session.getMapper(StrategyOperation.class);
//            strategyOperation.updateSname(afterName, userid, beforeName);
//            session.commit();
//        } catch (Exception e) {
//            e.printStackTrace();
//            session.rollback();
//        } finally {
//            session.close();
//        }
//        return true;
//    }
//
//    @Override
//    public boolean deleteStrategy(String userid, String sname) {
//        try {
//            session = MybatisUtils.getSession();
//            strategyOperation = session.getMapper(StrategyOperation.class);
//            strategyOperation.deleteStrategy(userid, sname);
//            session.commit();
//        } catch (Exception e) {
//            e.printStackTrace();
//            session.rollback();
//        } finally {
//            session.close();
//        }
//        return true;
//    }

    @Override
    public StrategyPo getStrategy(String userid, String sname) {
        StrategyPo s = null;
        try {
            session = MybatisUtils.getSession();
            strategyOperation = session.getMapper(StrategyOperation.class);
            s = strategyOperation.getStrategy(userid, sname);
            session.commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.rollback();
        } finally {
            session.close();
        }
        return s;
    }
}
