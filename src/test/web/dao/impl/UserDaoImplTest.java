package web.dao.impl;

import junit.framework.TestCase;
import web.model.register.User;

/**
 * Created by JiachenWang on 2016/8/16.
 */
public class UserDaoImplTest extends TestCase {

    public void testIsUserExist() throws Exception {
        UserDaoImpl test = new UserDaoImpl();
        System.out.println(test.isUserExist("admin"));
    }

    public void testGetPassword() throws Exception {
        UserDaoImpl test = new UserDaoImpl();
        System.out.println(test.getPassword("admin"));
    }

    public void testSave() throws Exception {
        UserDaoImpl test = new UserDaoImpl();
        User user = new User();
        user.setUsername("wang");
        user.setPwd("123456");
        user.setEmail("@@@");
        user.setCity("南京");
        user.setQuestion("hahaha");
        user.setAnswer("hhh");
        test.save(user);
    }

    public void testGetQuestion() throws Exception {
        UserDaoImpl test = new UserDaoImpl();
        System.out.println(test.getQuestion("admin"));
    }

    public void testGetAnswer() throws Exception {
        UserDaoImpl test = new UserDaoImpl();
        System.out.println(test.getAnswer("admin", "什么大学？"));
    }

}