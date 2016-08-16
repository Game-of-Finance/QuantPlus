package web.dao;


import web.model.exceptions.BadInputException;
import web.model.exceptions.NotFoundException;
import web.model.register.User;

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
    String getPassword(String username) throws NotFoundException;

    /**
     * 将user存入数据库
     */
    void save(User user) throws BadInputException;

    /**
     * 根据username获取密码提示问题
     */
    String getQuestion(String username) throws NotFoundException;

    /**
     * 根据用户名和问题获取密码提示答案
     */
    String getAnswer(String username, String question) throws NotFoundException;

}
