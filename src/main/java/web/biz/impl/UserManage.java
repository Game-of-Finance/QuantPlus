package web.biz.impl;


import org.springframework.beans.factory.annotation.Autowired;
import web.biz.IUserManage;
import web.dao.UserDao;
import web.model.CityMap;
import web.model.User;
import web.tools.MyMessage;

import java.util.*;

/**
 * Created by alfred on 16/8/12.
 */
public class UserManage implements IUserManage {

    @Autowired
    private UserDao userDao;

    public MyMessage login(String username, String password) {
        //TODO
        if(this.userDao.isUserExist(username)){

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
        if(this.userDao.isUserExist(username)){
            return false;
        }
        return true;
    }

    public void save(User user){
        userDao.save(user);
    }

    public List<String> getProvince(){
        List<String> result = new ArrayList<String>();
        CityMap cityMap = new CityMap();// 实例化保存省份信息的CityMap类的实例
        Map<String, String[]> map = cityMap.model;// 获取省份信息保存到Map中
        Set<String> set = map.keySet(); // 获取Map集合中的键，并以Set集合返回
        Iterator<String> it = set.iterator();
        while (it.hasNext()) { // 将获取的省份连接为一个以逗号分隔的字符串
            result.add(it.next());
        }
        return result;
    }


    public List<String> getCity(String province){
        List<String> result = new ArrayList<String>();
        String selProvince = province; // 获取选择的省份
//		selProvince = new String(selProvince.getBytes("ISO-8859-1"), "GBK");
        CityMap cityMap = new CityMap(); // 实例化保存省份信息的CityMap类的实例
        Map<String, String[]> map = cityMap.model; // 获取省份信息保存到Map中
        String[] arrCity = map.get(selProvince); // 获取指定键的值
        for (int i = 0; i < arrCity.length; i++) { // 将获取的市县连接为一个以逗号分隔的字符串
            result.add(arrCity[i]);
        }
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
