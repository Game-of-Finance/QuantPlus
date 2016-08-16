package web.dao.impl;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import web.dao.UserDao;
import web.dao.util.MybatisUtils;
import web.model.register.User;

import java.io.IOException;
import java.io.InputStream;

public class UserDaoImpl implements UserDao {

    private final static String BY_ID = "web.dao.util.mapping.userMapper.getUserByID";
    private final static String BY_NAME = "web.dao.util.mapping.userMapper.getUserByName";

    private SqlSession session = null;

    public boolean isUserExist(String username) {
        session = MybatisUtils.getSession();
        User user = session.selectOne(BY_NAME, username);
        session.close();
        return user != null;
    }

    public String getPassword(String username) {
        session = MybatisUtils.getSession();
        User user = session.selectOne(BY_NAME, username);
        session.close();
        user.getPwd();
        return user.getPwd();
    }

    public void save(User user) {
        //TODO 将user存入数据库
    }

    public String getQuestion(String username) {
        String question = "";
        //TODO
        return question;
    }

    public String getAnswer(String username, String question) {
        //TODO
        String answer = "";
        return answer;
    }
}
