package web.model.btAndVt;

import java.util.ArrayList;

/**
 * Created by linyufan on 16/9/11.
 */
public class TopicPo {

    public String topicid;

    public String userid;

    public String username;

    public String userportriat;

    public String title;

    public String content;

    public String strategyid;

    public int reply_count;

    public int click_count;

    public String release_date;

    public ArrayList<ReplyPo> replyPos;



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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }


    public String getRelease_date() {
        return release_date;
    }

    public void setRelease_date(String release_date) {
        this.release_date = release_date;
    }

    public ArrayList<ReplyPo> getReplyPos() {
        return replyPos;
    }

    public void setReplyPos(ArrayList<ReplyPo> replyPos) {
        this.replyPos = replyPos;
    }

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

    public String getStrategyid() {
        return strategyid;
    }

    public void setStrategyid(String strategyid) {
        this.strategyid = strategyid;
    }

    public int getReply_count() {
        return reply_count;
    }

    public void setReply_count(int reply_count) {
        this.reply_count = reply_count;
    }

    public int getClick_count() {
        return click_count;
    }

    public void setClick_count(int click_count) {
        this.click_count = click_count;
    }
}
