package dao.service;

import model.User;

/**
 * Created by kylin on 16/8/9.
 * All rights reserved.
 */
public interface UserDao {

    /**
     * 验证用户的方法
     *
     * @param user
     * @return 返回值为1表示登录成功，否则表示登录失败
     */
    int login(User user);

    /**
     * 功能：检测用户名是否为空
     *
     * @param sql
     * @return
     */
    String checkUser(String sql);

    /**
     * 功能：保存用户注册信息
     *
     * @param sql
     * @return
     */
    String save(String sql);

    /**
     * 找回密码第一步
     *
     * @param username
     * @return
     */
    String forgetPwd1(String username);

    /**
     * 找回密码第二步
     *
     * @param username
     * @return
     */
    String forgetPwd2(String username, String question, String answer);
}
