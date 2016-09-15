package web.model.btAndVt;

import java.util.ArrayList;

/**
 * Created by linyufan on 16/8/17.
 */
public class SocialgroupPo {

    public String sgid;

    public String sgname;

    public String summary;

    public String head;

    public double maxearn_average;

    //以下用户均有唯一标识
    public String creater;

    //    public ArrayList<String> managers;
    public ArrayList<UserPo> members;

    public double getMaxearn_average() {
        return maxearn_average;
    }

    public void setMaxearn_average(double maxearn_average) {
        this.maxearn_average = maxearn_average;
    }

    public String getSgid() {
        return sgid;
    }

    public void setSgid(String sgid) {
        this.sgid = sgid;
    }

    public String getSgname() {
        return sgname;
    }

    public void setSgname(String sgname) {
        this.sgname = sgname;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getHead() {
        return head;
    }

    public void setHead(String head) {
        this.head = head;
    }

    public String getCreater() {
        return creater;
    }

    public void setCreater(String creater) {
        this.creater = creater;
    }


    public ArrayList<UserPo> getMembers() {
        return members;
    }

    public void setMembers(ArrayList<UserPo> members) {
        this.members = members;
    }
}
