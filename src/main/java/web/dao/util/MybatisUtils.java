package web.dao.util;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.InputStream;

/**
 * Created by JiachenWang on 2016/8/16.
 */
public class MybatisUtils {

    /**
     * 读取conf.xml文件
     */
    private static SqlSessionFactory sessionFactory;

    static {
        iniFactory();
    }

    public static SqlSession getSession(){
        SqlSession session = sessionFactory.openSession();
        return session;
    }

    private static void iniFactory(){
        //mybatis的配置文件
        String resource = "conf.xml";
        //使用类加载器加载mybatis的配置文件（它也加载关联的映射文件）
        InputStream is = MybatisUtils.class.getResourceAsStream(resource);
        //构建sqlSession的工厂
        sessionFactory = new SqlSessionFactoryBuilder().build(is);
        sessionFactory.getConfiguration().addMapper(UserOperation.class);
    }

}
