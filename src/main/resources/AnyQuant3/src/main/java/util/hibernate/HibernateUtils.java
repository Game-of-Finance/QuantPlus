package util.hibernate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 * Created by JiachenWang on 2016/5/12.
 */
public class HibernateUtils {
    /**
     * 读取Hibernate.cfg.xml文件
     */
    private static SessionFactory factory;

    /**
     * 记录连接数
     */
    private static int count;

    static {
        count = 0;
        try {
            //读取hibernate.cfg.xml文件
            Configuration cfg = new Configuration().configure(HibernateUtils.class.getResource("hibernate.cfg.xml"));

            //建立SessionFactory
            factory = cfg.buildSessionFactory();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static void iniFactory(){
        try {
            //读取hibernate.cfg.xml文件
            Configuration cfg = new Configuration().configure(HibernateUtils.class.getResource("hibernate.cfg.xml"));

            //建立SessionFactory
            factory = cfg.buildSessionFactory();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    /**
     * 打开Session
     */
    public static Session getSession() {
        count++;
        if (factory.isClosed())
            iniFactory();
        return factory.openSession();
    }

    /**
     * 关闭Session
     */
    public static void closeSession(Session session) {
        if (session != null) {
            if (session.isOpen()) {
                session.close();
            }
            if(count>=20) {
                count = 0;
                HibernateUtils.closeFactory();
            }
        }
    }

    /**
     *关闭factory
     */
    public static void closeFactory() {
        if (factory != null) {
            if (!factory.isClosed()) {
                factory.close();
            }
        }
    }
}
