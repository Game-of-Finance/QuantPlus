package web.dao;


import web.model.User;

/**
 * Created by kylin on 16/8/9.
 * All rights reserved.
 */
public interface UserDao {

    /**
     * 判断username是否已经存在
     */
    boolean isUserExist(String username);

    /**
     * 根据username获取password
     */
    String getPassword(String username);

    /**
     * 将user存入数据库
     */
    void save(User user);

    /**
     * 根据username获取密码提示问题
     */
    String getQuestion(String username);

    /**
     * 根据用户名和问题获取密码提示答案
     */
    String getAnswer(String username,String question);

}
