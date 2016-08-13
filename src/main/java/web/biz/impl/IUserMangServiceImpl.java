package web.biz.impl;


import org.springframework.beans.factory.annotation.Autowired;
import web.biz.IUserMangService;
import web.dao.UserDao;
import web.model.CityMap;
import web.model.User;
import web.tools.MyMessage;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/**
 * Created by alfred on 16/8/12.
 */
public class IUserMangServiceImpl implements IUserMangService {

    @Autowired
    private UserDao userDao;

    public MyMessage login(String username, String password) {
        //TODO
        if(this.userDao.isUserExsit(username)){

        }else {
            return new MyMessage();
        }
        // using dao interface
        return null;
    }

    public void exit(String username) {
        //TODO
    }

    public boolean checkUser(String username){
        if(this.userDao.isUserExsit(username)){
            return false;
        }
        return true;
    }

    public void save(String username,String pwd,String email,String question,String answer,String city){
        User user = new User();
        user.setUsername(username);
        user.setPwd(pwd);
        user.setEmail(email);
        user.setQuestion(question);
        user.setAnswer(answer);
        user.setCity(city);
        userDao.save(user);
    }

    public String getProvince(){
        String result = "";
        CityMap cityMap = new CityMap();// 实例化保存省份信息的CityMap类的实例
        Map<String, String[]> map = cityMap.model;// 获取省份信息保存到Map中
        Set<String> set = map.keySet(); // 获取Map集合中的键，并以Set集合返回
        Iterator it = set.iterator();
        while (it.hasNext()) { // 将获取的省份连接为一个以逗号分隔的字符串
            result = result + it.next() + ",";
        }
        result = result.substring(0, result.length() - 1); // 去除最后一个逗号
        return result;
    }


    public String getCity(String province){
        String result = "";
        String selProvince = province; // 获取选择的省份
//		selProvince = new String(selProvince.getBytes("ISO-8859-1"), "GBK");
        CityMap cityMap = new CityMap(); // 实例化保存省份信息的CityMap类的实例
        Map<String, String[]> map = cityMap.model; // 获取省份信息保存到Map中
        String[] arrCity = map.get(selProvince); // 获取指定键的值
        for (int i = 0; i < arrCity.length; i++) { // 将获取的市县连接为一个以逗号分隔的字符串
            result = result + arrCity[i] + ",";
        }
        result = result.substring(0, result.length() - 1); // 去除最后一个逗号
        return result;
    }

    public String forgetPwd1(String username){
        String question = userDao.getQuestion(username);// 执行找回密码第一步对应的方法获取密码提示问题
        return  question;
    }

    public String forgetPwd2(String question,String username,String answer){

        String Answer = userDao.getAnswer(username,question); // 获取提示问题答案
        String pwd = userDao.getPassword(username);


        if (Answer.equals(answer)) {// 提示问题答案正确，返回密码
            return pwd;
        } else {// 提示问题答案错误
            return "提示问题答案错误";
        }
    }
}
