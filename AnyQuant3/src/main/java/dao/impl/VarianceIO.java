package dao.impl;

import dao.entity.Variance;
import dao.service.VarianceService;
import org.hibernate.Query;
import org.hibernate.Session;
import util.exception.NotFoundException;
import util.hibernate.HibernateUtils;

import java.util.List;

/**
 * Created by JiachenWang on 2016/6/5.
 */
public class VarianceIO implements VarianceService {

    @Override
    public Variance getVariance(String time, String stock_num) throws NotFoundException {
        String hqlSelect = "from dao.entity.Variance where time =:time and id =:id";
        Session session = HibernateUtils.getSession();
        Query querySelect = session.createQuery(hqlSelect);
        querySelect.setParameter("time", time);
        querySelect.setParameter("id", stock_num);
        List<Variance> list = querySelect.list();
        if (list.size() == 0)
            throw new NotFoundException("没有该月该股票数据" + time);
        return list.get(0);
    }

    @Override
    public List<Variance> getAllVariance(String time) throws NotFoundException {
        String hqlSelect = "from dao.entity.Variance where time =:time";
        Session session = HibernateUtils.getSession();
        Query querySelect = session.createQuery(hqlSelect);
        querySelect.setParameter("time", time);
        List<Variance> list = querySelect.list();
        HibernateUtils.closeSession(session);
        if (list.size() == 0)
            throw new NotFoundException("没有该月总体方差数据" + time);
        return list;
    }

    @Override
    public void setAllVariance(List<Variance> vars) throws NotFoundException {
        Session session = HibernateUtils.getSession();
        session.beginTransaction();
        int count = 1;

        for (Variance var : vars) {

            count ++;
            session.save(var);

            if (count % 50 == 0) {
                session.getTransaction().commit();
                session.flush();
                session.clear();
                session.beginTransaction();
            }

        }
        session.getTransaction().commit();
        HibernateUtils.closeSession(session);
        return;
    }

}
