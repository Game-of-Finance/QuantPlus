package web.dao.util;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import web.model.register.User;

/**
 * Created by JiachenWang on 2016/8/16.
 */
public interface UserOperation {

    @Select("select * from users where id=#{id}")
    public User getUserByID(int id);

    @Select("select * from users where username=#{username}")
    public User getUserByName(String username);

    @Insert("insert into users(username,pwd,email,question,answer,city)" +
            "values(#{username},#{pwd},#{email},#{question},#{answer},#{city})")
    public void addUser(User user);
}
