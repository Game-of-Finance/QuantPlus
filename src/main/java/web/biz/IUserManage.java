package web.biz;


import web.model.register.User;
import web.tools.MyMessage;

import java.util.List;

/**
 * Created by alfred on 16/8/12.
 */
public interface IUserManage {

    /**
     * 功能：用户登录
     *
     * @param username
     * @param password
     * @return
     */
    MyMessage login(String username, String password);

    /**
     * 功能：用户退出
     *
     * @param username
     */
    void exit(String username);


    /**
     * 检测用户名是否被注册
     *
     * @param username
     */
    boolean checkUser(String username);

    /**
     * 保证注册的用户信息
     *
     * @param newUser
     */
    void save(User newUser);

    /**
     * 获取省份和直辖市
     */
    List<String> getProvince();

    /**
     * 获取市县
     */
    List<String> getCity(String province);

    /**
     * 找回密码第一步
     *
     * @param username
     */
    String forgetPwd1(String username);

    /**
     * 找回密码第二步
     */
    String forgetPwd2(String question, String username, String answer);
}
