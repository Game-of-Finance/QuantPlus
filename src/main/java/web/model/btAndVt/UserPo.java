package web.model.btAndVt;

/**
 * Created by linyufan on 16/7/22.
 */
public class UserPo {

    public String UserId;
    public String Password;
    public String Head;
    public String Summary;
    public String UserName;

    //社群排名用
    public double maxearn=0;
    public String sid;
    public String sname;
    public String poolid;

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }


    public double getMaxearn() {
        return maxearn;
    }

    public void setMaxearn(double maxearn) {
        this.maxearn = maxearn;
    }

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
    }

    public String getPoolid() {
        return poolid;
    }

    public void setPoolid(String poolid) {
        this.poolid = poolid;
    }

    public UserPo(String userid,String username,double maxearn,String sid,String sname,String poolid) {
        this.UserId = userid;
        this.UserName = username;
        this.maxearn = maxearn;
        this.sid = sid;
        this.sname = sname;
        this.poolid = poolid;
    }

    public UserPo(String userName, String password) {
        this.UserName = userName;
        this.Password = password;
    }

    public UserPo(){

    }

    public String getUserId() {
        return UserId;
    }

    public void setUserId(String userId) {
        UserId = userId;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public String getHead() {
        return Head;
    }

    public void setHead(String head) {
        Head = head;
    }

    public String getSummary() {
        return Summary;
    }

    public void setSummary(String summary) {
        Summary = summary;
    }

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String userName) {
        UserName = userName;
    }
}
