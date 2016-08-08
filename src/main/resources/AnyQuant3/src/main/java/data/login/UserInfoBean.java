package data.login;

/**
 * Created by kylin on 16/5/11.
 */
public class UserInfoBean {

    public static boolean checkUser(String name,String password){
        if(name.equals(password)){
            return true;
        }
        return false;
    }

}
