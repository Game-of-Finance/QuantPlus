package web.dao.impl;


import org.apache.ibatis.session.SqlSession;
import web.dao.UserDao;
import web.dao.util.MybatisUtils;
import web.dao.util.UserOperation;
import web.model.exceptions.BadInputException;
import web.model.exceptions.NotFoundException;
import web.model.register.User;

public class UserDaoImpl implements UserDao {

    SqlSession session;
    UserOperation userOperation;

    public UserDaoImpl() {

    }

    private User getUser(String username) {
        User user = null;
        try {
            session = MybatisUtils.getSession();
            userOperation = session
                    .getMapper(UserOperation.class);
            user = userOperation.getUserByName(username);
            session.commit();
        } finally {
            session.close();
        }
        return user;
    }

    public boolean isUserExist(String username) {
        User user = this.getUser(username);
        return user != null;
    }

    public String getPassword(String username) throws NotFoundException {
        User user = this.getUser(username);
        if (user == null)
            throw new NotFoundException("用户不存在");
        return user.getPwd();
    }

    public void save(User user) throws BadInputException {
        try {
            session = MybatisUtils.getSession();
            userOperation = session
                    .getMapper(UserOperation.class);
            userOperation.addUser(user);
            session.commit();
        } finally {
            session.close();
        }
    }

    public String getQuestion(String username) throws NotFoundException {
        User user = this.getUser(username);
        if (user == null)
            throw new NotFoundException("用户不存在");
        return user.getQuestion();
    }

    public String getAnswer(String username, String question) throws NotFoundException {
        User user = this.getUser(username);
        if (user == null)
            throw new NotFoundException("用户不存在");
        else if (!question.equalsIgnoreCase(user.getQuestion()))
            throw new NotFoundException("问题不匹配");
        return user.getAnswer();
    }

}
