package dao.impl;

import dao.entity.StockAttribute;
import dao.service.StockWriteService;
import dao.tool.StockHelper;
import model.stock.ResultMsg;
import org.hibernate.Session;
import po.StockPO;
import util.hibernate.HibernateUtils;

import java.util.HashMap;

/**
 * Created by JiachenWang on 2016/5/12.
 */
public class StockWriter implements StockWriteService {

    @Override
    public ResultMsg insertStockAttrs(StockPO po) {
        HashMap<String, HashMap<String, String>> infomation = po.getInfomation();

        Session session = HibernateUtils.getSession();
        session.beginTransaction();
        int count = 1;

        for (String key : infomation.keySet()) {
            StockAttribute attr = new StockAttribute(po.getNumber(), key);
            HashMap<String, String> map = infomation.get(key);
            for (String field : map.keySet()) {
                StockHelper.setInfo(attr, field, map.get(field));
            }

            count ++;
            session.save(attr);

            if (count % 50 == 0) {
                session.getTransaction().commit();
                session.flush();
                session.clear();
                session.beginTransaction();
            }

        }
        session.getTransaction().commit();
        HibernateUtils.closeSession(session);
        return new ResultMsg(true, "操作成功");
    }

}
