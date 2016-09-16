package web.model.btAndVt;

/**
 * Created by linyufan on 16/7/23.
 */
public class StrategyPo {

    public String userid;

    public String sid;

    public String sname;

    public String py_text;

    public String updateAt;

    public String getUpdateAt() {
        return updateAt;
    }

    public void setUpdateAt(String updateAt) {
        this.updateAt = updateAt;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String strategyname) {
        this.sname = strategyname;
    }
//
    public String getPyTest() {
        return py_text;
    }

    public void setPython(String python) {
        this.py_text = python;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getStrategyid() {
        return sid;
    }

    public void setStrategyid(String strategyid) {
        this.sid = strategyid;
    }

}
