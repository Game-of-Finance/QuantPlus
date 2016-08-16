package web.dao.impl;


import org.apache.ibatis.session.SqlSession;
import web.dao.UserDao;
import web.dao.util.MybatisUtils;
import web.dao.util.UserOperation;
import web.model.exceptions.BadInputException;
import web.model.exceptions.NotFoundException;
import web.model.register.User;

public class UserDaoImpl implements UserDao {

    UserOperation userOperation;

    public UserDaoImpl() {
        SqlSession session = MybatisUtils.getSession();
        userOperation = session
                .getMapper(UserOperation.class);
    }

    public boolean isUserExist(String username) {
        User user = userOperation.getUserByName(username);
        return user != null;
    }

    public String getPassword(String username) throws NotFoundException {
        User user = userOperation.getUserByName(username);
        if (user == null)
            throw new NotFoundException("用户不存在");
        return user.getPwd();
    }

    public void save(User user) throws BadInputException {
//        try {
        userOperation.addUser(user);
//        } catch (Exception e) {
//            throw new BadInputException("新增数据有误");
//        }
    }

    public String getQuestion(String username) throws NotFoundException {
        User user = userOperation.getUserByName(username);
        if (user == null)
            throw new NotFoundException("用户不存在");
        return user.getQuestion();
    }

    public String getAnswer(String username, String question) throws NotFoundException {
        User user = userOperation.getUserByName(username);
        if (user == null)
            throw new NotFoundException("用户不存在");
        else if (!question.equalsIgnoreCase(user.getQuestion()))
            throw new NotFoundException("问题不匹配");
        return user.getAnswer();
    }

}
