package dao.impl;

import dao.entity.StockAttribute;
import dao.entity.TradeDao;
import dao.service.TradeService;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import util.exception.NotFoundException;
import util.hibernate.HibernateUtils;
import util.math.NumberFormater;
import util.time.DateCount;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * Created by JiachenWang on 2016/6/6.
 */
public class TradeReader implements TradeService {

    @Override
    public List<TradeDao> getTrade(String num, String date) throws NotFoundException {
        String hqlSelect = "from dao.entity.TradeDao where id = :num and date = :date";
        Session session = HibernateUtils.getSession();
//        Criteria cri = session.createCriteria(TradeDao.class);
//        cri.add(Restrictions.eq("id", num));
//        cri.add(Restrictions.eq("date", num));
        Query querySelect = session.createQuery(hqlSelect);
        querySelect.setParameter("num", num);
        querySelect.setParameter("date", date);
        List<TradeDao> list = querySelect.list();
        HibernateUtils.closeSession(session);
        if (list.size() == 0||list.size() == 3)
            throw new NotFoundException("没有对应数据" + num + "!!!" + date);
        return list;
    }

    @Override
    public HashMap<String, Double> getPieVolumeInfo(String number, String start, String end) throws NotFoundException {
        double buy = 0;
        double sold = 0;
        double mid = 0;
        while (!start.equalsIgnoreCase(end)) {
            String hqlSelect = "from dao.entity.TradeDao where id = :num and date = :date";
            Session session = HibernateUtils.getSession();
            Query querySelect = session.createQuery(hqlSelect);
            querySelect.setParameter("num", number);
            querySelect.setParameter("date", start);
            List<TradeDao> list = querySelect.list();

            for (TradeDao dao : list) {
                String type = dao.getType();
                if (type == null)
                    continue;
                if (type.equalsIgnoreCase("买盘"))
                    buy += NumberFormater.string2Double(dao.getVolume());
                else if (type.equalsIgnoreCase("中性盘"))
                    mid += NumberFormater.string2Double(dao.getVolume());
                else if (type.equalsIgnoreCase("卖盘"))
                    sold += NumberFormater.string2Double(dao.getVolume());
            }

            start = DateCount.count(start, 1);
        }

        String hqlSelect = "from dao.entity.TradeDao where id = :num and date = :date";
        Session session = HibernateUtils.getSession();
        Query querySelect = session.createQuery(hqlSelect);
        querySelect.setParameter("num", number);
        querySelect.setParameter("date", end);
        List<TradeDao> list = querySelect.list();

        for (TradeDao dao : list) {
            String type = dao.getType();
            if (type == null)
                continue;
            if (type.equalsIgnoreCase("买盘"))
                buy += NumberFormater.string2Double(dao.getVolume());
            else if (type.equalsIgnoreCase("中性盘"))
                mid += NumberFormater.string2Double(dao.getVolume());
            else if (type.equalsIgnoreCase("卖盘"))
                sold += NumberFormater.string2Double(dao.getVolume());
        }
        HibernateUtils.closeSession(session);

        if (buy==0&&sold==0&&mid==0)
            throw new NotFoundException("该股票没有数据：" + number);
        HashMap<String, Double> originMap = new HashMap<>();
        originMap.put("买盘", buy);
        originMap.put("卖盘", sold);
        originMap.put("中性盘", mid);
        return originMap;
    }

    @Override
    public HashMap<String, Double> getPieAmountInfo(String number, String start, String end) throws NotFoundException {
        double buy = 0;
        double sold = 0;
        double mid = 0;
        while (!start.equalsIgnoreCase(end)) {
            String hqlSelect = "from dao.entity.TradeDao where id = :num and date = :date";
            Session session = HibernateUtils.getSession();
            Query querySelect = session.createQuery(hqlSelect);
            querySelect.setParameter("num", number);
            querySelect.setParameter("date", start);
            List<TradeDao> list = querySelect.list();

            for (TradeDao dao : list) {
                String type = dao.getType();
                if (type == null)
                    continue;
                if (type.equalsIgnoreCase("买盘"))
                    buy += NumberFormater.string2Double(dao.getVolume());
                else if (type.equalsIgnoreCase("中性盘"))
                    mid += NumberFormater.string2Double(dao.getVolume());
                else if (type.equalsIgnoreCase("卖盘"))
                    sold += NumberFormater.string2Double(dao.getVolume());
            }

            start = DateCount.count(start, 1);
        }

        String hqlSelect = "from dao.entity.TradeDao where id = :num and date = :date";
        Session session = HibernateUtils.getSession();
        Query querySelect = session.createQuery(hqlSelect);
        querySelect.setParameter("num", number);
        querySelect.setParameter("date", end);
        List<TradeDao> list = querySelect.list();
        HibernateUtils.closeSession(session);

        for (TradeDao dao : list) {
            String type = dao.getType();
            if (type == null)
                continue;
            if (type.equalsIgnoreCase("买盘"))
                buy += NumberFormater.string2Double(dao.getVolume());
            else if (type.equalsIgnoreCase("中性盘"))
                mid += NumberFormater.string2Double(dao.getVolume());
            else if (type.equalsIgnoreCase("卖盘"))
                sold += NumberFormater.string2Double(dao.getVolume());
        }

        if (buy==0&&sold==0&&mid==0)
            throw new NotFoundException("该股票没有数据：" + number);

        HashMap<String, Double> originMap = new HashMap<>();
        originMap.put("买盘", buy / 1000000);
        originMap.put("卖盘", sold / 1000000);
        originMap.put("中性盘", mid / 1000000);
        return originMap;
    }

    @Override
    public String getTradeDate(String stock_num) {
        String tmp_date = DateCount.getRecentWorkDay();
        String end = DateCount.count(tmp_date, -14);

        Session session = HibernateUtils.getSession();
        String hqlSelect;
        Query querySelect;
        List<TradeDao> list = new ArrayList<TradeDao>();
        while (list.size()<=3) {
            if (tmp_date.equalsIgnoreCase(end))
                return end;

            if (DateCount.getWeekOfDate(tmp_date)==6||DateCount.getWeekOfDate(tmp_date)==7) {
                tmp_date = DateCount.count(tmp_date, -1);
                continue;
            }
            hqlSelect = "from dao.entity.TradeDao where id = :num and date = :date";
            querySelect = session.createQuery(hqlSelect);
            querySelect.setParameter("num", stock_num);
            querySelect.setParameter("date", tmp_date);
            list = querySelect.list();

            //清空hibernate一级缓存
            session.flush();
            session.clear();
            session.beginTransaction();

            tmp_date = DateCount.count(tmp_date, -1);
        }
        HibernateUtils.closeSession(session);

        tmp_date = DateCount.count(tmp_date, 1);
        return tmp_date;
    }

}
