package dao.stub;

import dao.service.UserDao;
import model.User;

/**
 * Created by kylin on 16/8/9.
 * All rights reserved.
 */
public class UserStub implements UserDao{

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
}
