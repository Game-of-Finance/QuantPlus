package web.biz;


import web.tools.MyMessage;

/**
 * Created by alfred on 16/8/12.
 */
public interface IUserMangService {

    /**
     * 功能：用户登录
     *
     * @param username
     * @param password
     * @return
     */
    MyMessage login(String username, String password);

    /**
     *
     * 功能：用户退出
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
     * @param username
     */
    void save(String username,String pwd,String email,String question,String answer,String city);

    /**
     * 获取省份和直辖市
     *
     */
    String getProvince();

    /**
     * 获取市县
     */
    String getCity(String province);

    /**
     * 找回密码第一步
     *
     * @param username
     */
    String forgetPwd1(String username);

    /**
     * 找回密码第二步
     *
     */
    String forgetPwd2(String question,String username,String answer);
}
