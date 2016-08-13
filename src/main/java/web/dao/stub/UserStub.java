package web.dao.stub;


import web.dao.UserDao;
import web.model.User;

/**
 * Created by kylin on 16/8/9.
 * All rights reserved.
 */
public class UserStub implements UserDao {

    public int login(User user) {
        return 0;
    }

    public String checkUser(String sql) {
        return null;
    }

    public String save(String sql) {
        return null;
    }

    public String forgetPwd1(String username) {
        return null;
    }

    public String forgetPwd2(String username, String question, String answer) {
        return null;
    }

    public boolean isUserExist(String username) {
        return false;
    }

    public String getPassword(String username) {
        return null;
    }

    public void save(User user) {

    }

    public String getQuestion(String username) {
        return null;
    }

    public String getAnswer(String username, String question) {
        return null;
    }
}
