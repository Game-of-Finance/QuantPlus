package dao.impl;

import dao.entity.IndustryAttribute;
import dao.service.IndustryService;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.exception.ConstraintViolationException;
import util.exception.NotFoundException;
import util.hibernate.HibernateUtils;

import java.util.List;

/**
 * Created by JiachenWang on 2016/6/1.
 */
public class IndustryIO implements IndustryService {

    @Override
    public IndustryAttribute getIndustryInfo(String industryName, String time) throws NotFoundException {
        String hqlSelect = "from dao.entity.IndustryAttribute where industryName =:name and time =:time";
        Session session = HibernateUtils.getSession();
        Query querySelect = session.createQuery(hqlSelect);
        querySelect.setParameter("name", industryName);
        querySelect.setParameter("time", time);
        List<IndustryAttribute> list = querySelect.list();
        HibernateUtils.closeSession(session);
        if (list.size() == 0)
            throw new NotFoundException("没有对应行业数据" + industryName+"time="+time);
        return list.get(0);
    }

    @Override
    public void setIndustryInfo(IndustryAttribute attr) throws NotFoundException {
        Session session = null;
        try {
            session = HibernateUtils.getSession();
            session.beginTransaction();
            session.save(attr);
            session.getTransaction().commit();
        } catch (ConstraintViolationException e) {

        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        } finally {
            HibernateUtils.closeSession(session);
        }
        return;
    }

}
