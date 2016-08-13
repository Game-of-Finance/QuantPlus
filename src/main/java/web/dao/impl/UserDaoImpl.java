package web.dao.impl;


import web.dao.UserDao;
import web.model.User;

public class UserDaoImpl implements UserDao {

	public boolean isUserExist(String username) {
		//TODO 判断username是否已经存在
		return false;
	}

	public String getPassword(String username){
		//TODO
		String password = "";
		return password;
	}

	public void save(User user) {
		//TODO 将user存入数据库
	}

	public String getQuestion(String username) {
		String question="";
		//TODO
		return question;
	}

	public String getAnswer(String username,String question) {
		//TODO
		String answer = "";
		return answer;
	}
}
