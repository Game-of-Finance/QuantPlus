package web.dao.impl;


import org.apache.ibatis.session.SqlSession;
import web.dao.UserDao;
import web.dao.util.MybatisUtils;
import web.model.exceptions.BadInputException;
import web.model.exceptions.NotFoundException;
import web.model.register.User;

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

    public String getPassword(String username) throws NotFoundException {
        session = MybatisUtils.getSession();
        User user = session.selectOne(BY_NAME, username);
        session.close();
        if (user==null)
            throw new NotFoundException("用户不存在");
        return user.getPwd();
    }

    public void save(User user) throws BadInputException {

    }

    public String getQuestion(String username) throws NotFoundException {
        session = MybatisUtils.getSession();
        User user = session.selectOne(BY_NAME, username);
        session.close();
        if (user==null)
            throw new NotFoundException("用户不存在");
        return user.getQuestion();
    }

    public String getAnswer(String username, String question) throws NotFoundException {
        session = MybatisUtils.getSession();
        User user = session.selectOne(BY_NAME, username);
        session.close();
        if (user==null)
            throw new NotFoundException("用户不存在");
        return user.getAnswer();
    }

}
