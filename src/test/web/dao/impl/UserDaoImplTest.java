package web.dao.impl;

import junit.framework.TestCase;

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

    }

    public void testGetQuestion() throws Exception {

    }

    public void testGetAnswer() throws Exception {

    }

}