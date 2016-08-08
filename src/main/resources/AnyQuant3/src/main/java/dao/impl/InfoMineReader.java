package dao.impl;

import dao.entity.InfoMineDao;
import dao.service.InfoMineService;
import org.hibernate.Query;
import org.hibernate.Session;
import util.exception.NotFoundException;
import util.hibernate.HibernateUtils;

import java.util.List;

/**
 * Created by JiachenWang on 2016/6/1.
 */
public class InfoMineReader implements InfoMineService {

    @Override
    public List<InfoMineDao> getStockInfoMine(String number) throws NotFoundException {
        String hqlSelect = "from dao.entity.InfoMineDao where stock_num = :num";
        Session session = HibernateUtils.getSession();
        Query querySelect = session.createQuery(hqlSelect);
        querySelect.setParameter("num", number);
        List<InfoMineDao> list = querySelect.list();
        HibernateUtils.closeSession(session);
        if (list.size() == 0)
            throw new NotFoundException("没有对应数据" + number);
        return list;
    }

}
