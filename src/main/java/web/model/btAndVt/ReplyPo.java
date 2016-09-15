package web.model.btAndVt;

import java.util.ArrayList;

/**
 * Created by linyufan on 16/9/11.
 */
public class ReplyPo {

    public String replyid;

    public String topicid;

    public String userid;

    public String username;

    public String userportriat;

    public String responsed_userid;

    public String responsed_username;

    public String responsed_userportriat;

    public String orderid;

    public String content;

    public ArrayList<ReplyPo> replyPos;

    public String release_date;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserportriat() {
        return userportriat;
    }

    public void setUserportriat(String userportriat) {
        this.userportriat = userportriat;
    }

    public String getResponsed_userid() {
        return responsed_userid;
    }

    public void setResponsed_userid(String responsed_userid) {
        this.responsed_userid = responsed_userid;
    }

    public String getResponsed_username() {
        return responsed_username;
    }

    public void setResponsed_username(String responsed_username) {
        this.responsed_username = responsed_username;
    }

    public String getResponsed_userportriat() {
        return responsed_userportriat;
    }

    public void setResponsed_userportriat(String responsed_userportriat) {
        this.responsed_userportriat = responsed_userportriat;
    }

    public String getRelease_date() {
        return release_date;
    }

    public void setRelease_date(String release_date) {
        this.release_date = release_date;
    }

    public String getReplyid() {
        return replyid;
    }

    public void setReplyid(String replyid) {
        this.replyid = replyid;
    }

    public String getTopicid() {
        return topicid;
    }

    public void setTopicid(String topicid) {
        this.topicid = topicid;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public ArrayList<ReplyPo> getReplyPos() {
        return replyPos;
    }

    public void setReplyPos(ArrayList<ReplyPo> replyPos) {
        this.replyPos = replyPos;
    }
}
