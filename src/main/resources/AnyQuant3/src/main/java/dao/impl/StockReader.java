package dao.impl;

import dao.entity.*;
import dao.service.StockReadService;
import org.hibernate.Query;
import org.hibernate.Session;
import util.exception.NotFoundException;
import util.hibernate.HibernateUtils;
import util.time.DateCount;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * Created by JiachenWang on 2016/5/12.
 */
public class StockReader implements StockReadService {

    @Override
    public String getNameByID(String number) throws NotFoundException {
        String hqlSelect = "from dao.entity.StockBase where id=:num";
        Session session = HibernateUtils.getSession();
        Query querySelect = session.createQuery(hqlSelect);
        querySelect.setParameter("num", number);
        List<StockBase> list = querySelect.list();
        HibernateUtils.closeSession(session);
        if (list.size()==0)
            throw new NotFoundException("输入的代码 "+number+" 无对应股票,无名称");
        return list.get(0).getName();
    }

    @Override
    public List<String> getIDLikeName(String name) throws NotFoundException {
        String hqlSelect = "from dao.entity.StockBase where name like '%" + name + "%'";
        Session session = HibernateUtils.getSession();
        Query querySelect = session.createQuery(hqlSelect);
        List<StockBase> list = querySelect.list();
        HibernateUtils.closeSession(session);
        if (list.size()==0)
            throw new NotFoundException("没有搜索到相关信息:"+name);
        List<String> nums = new ArrayList<String>();
        for (StockBase one_stock : list)
            nums.add(one_stock.getId());
        return nums;
    }

    @Override
    public HashMap<String, String> getStockNumAndName() {
        String hqlSelect = "from dao.entity.StockBase";
        Session session = HibernateUtils.getSession();
        Query querySelect = session.createQuery(hqlSelect);
        List<StockBase> list = querySelect.list();
        HibernateUtils.closeSession(session);

        HashMap<String, String> map = new HashMap();
        for (StockBase tmp : list) {
            map.put(tmp.getName(), tmp.getId());
        }
        return map;
    }

    @Override
    public HashMap<String, HashMap<String, String>> getNamesAndNames() {
        HashMap<String, HashMap<String, String>> map = new HashMap();

        String hqlSelect = "from dao.entity.IndustryBase";
        Session session = HibernateUtils.getSession();
        Query querySelect = session.createQuery(hqlSelect);
        List<IndustryBase> list = querySelect.list();

        hqlSelect = "from dao.entity.StockBase";
        querySelect = session.createQuery(hqlSelect);
        List<StockBase> stocks = querySelect.list();
        HibernateUtils.closeSession(session);

        for (IndustryBase industryBase : list) {

            HashMap<String, String> inner_map = new HashMap();

            for (StockBase stock : stocks) {
                if (stock.getIndustry().equalsIgnoreCase(industryBase.getName())) {
                    inner_map.put(stock.getName(), stock.getId());
                }
            }
            map.put(industryBase.getName(), inner_map);
        }
        return map;
    }

    @Override
    public List<StockAttribute> getStock(String num) throws NotFoundException {
        String hqlSelect = "from dao.entity.StockAttribute where id = :num";
        Session session = HibernateUtils.getSession();
        Query querySelect = session.createQuery(hqlSelect);
        querySelect.setParameter("num", num);
        List<StockAttribute> list = querySelect.list();
        HibernateUtils.closeSession(session);
        if (list.size() == 0)
            throw new NotFoundException("输入的代码 "+num+"没有对应数据");
        return list;
    }

    @Override
    public List<String> getBenchmarkList() {
        String hqlSelect = "from dao.entity.BenchmarkBase";
        Session session = HibernateUtils.getSession();
        Query querySelect = session.createQuery(hqlSelect);
        List<BenchmarkBase> list = querySelect.list();
        List<String> result = new ArrayList<String>();
        for (BenchmarkBase tmp : list) {
            result.add(tmp.getId());
        }
        HibernateUtils.closeSession(session);
        return result;
    }

    @Override
    public HashMap<String, String> getAllBenchmark() {
        String hqlSelect = "from dao.entity.BenchmarkBase";
        Session session = HibernateUtils.getSession();
        Query querySelect = session.createQuery(hqlSelect);
        List<BenchmarkBase> list = querySelect.list();
        HashMap<String, String> map = new HashMap();
        HibernateUtils.closeSession(session);
        for (BenchmarkBase tmp : list) {
            map.put(tmp.getName(), tmp.getId());
        }
        return map;
    }

    @Override
    public List<BenchmarkAttribute> getBenchmark(String bench) throws NotFoundException {
        String hqlSelect = "from dao.entity.BenchmarkAttribute where id = :bench";
        Session session = HibernateUtils.getSession();
        Query querySelect = session.createQuery(hqlSelect);
        querySelect.setParameter("bench", bench);
        List<BenchmarkAttribute> list = querySelect.list();
        HibernateUtils.closeSession(session);
        if (list.size() == 0)
            throw new NotFoundException("输入的大盘 "+bench+"没有对应数据");
        return list;
    }

    @Override
    public List<StockAttribute> getLastest() {
        String tmp_date = DateCount.getRecentWorkDay();
        Session session = HibernateUtils.getSession();
        String hqlSelect;
        Query querySelect;
        List<StockAttribute> list = new ArrayList<>();
        while (list.size()==0) {
            if (DateCount.getWeekOfDate(tmp_date)==6||DateCount.getWeekOfDate(tmp_date)==7) {
                tmp_date = DateCount.count(tmp_date, -1);
                continue;
            }
            hqlSelect = "from dao.entity.StockAttribute s where s.date=:date";
            querySelect = session.createQuery(hqlSelect);
            querySelect.setParameter("date", tmp_date);
            list = querySelect.list();

//            //清空hibernate一级缓存
//            session.flush();
//            session.clear();
//            session.beginTransaction();

            tmp_date = DateCount.count(tmp_date, -1);
        }
        HibernateUtils.closeSession(session);

        return list;
    }

    @Override
    public HashMap<String, String> getCloseBeforeLastest(String lastest_date) {
        String date = lastest_date;
        Session session = HibernateUtils.getSession();
        String hqlSelect;
        Query querySelect;

        List<Object[]> list = new ArrayList<Object[]>();
        while (list.size()==0) {
            date = DateCount.count(date, -1);
            if (DateCount.getWeekOfDate(date)==6||DateCount.getWeekOfDate(date)==7)
                continue;
            hqlSelect = "select id,close from dao.entity.StockAttribute where date=:date";
            querySelect = session.createQuery(hqlSelect);
            querySelect.setParameter("date", date);

            list = querySelect.list();

//            //清空hibernate一级缓存
//            session.flush();
//            session.clear();
//            session.beginTransaction();
        }
        HibernateUtils.closeSession(session);

        HashMap<String, String> result = new HashMap<String, String>();

        for(Object[] object : list) {
            String id = (String)object[0];
            String close = (String)object[1];
            result.put(id, close);
        }

        return result;
    }

}
