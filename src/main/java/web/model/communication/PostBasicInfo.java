package web.model.communication;

import web.model.enums.PostTopic;

import java.util.Date;

/**
 * Created by kylin on 16/8/13.
 * All rights reserved.
 */
public class PostBasicInfo {

    /**
     * 帖子ID(唯一标示符)
     */
    String postID;

    /**
     * 标题
     */
    String titile;

    /**
     * 作者
     */
    String anthor;

    /**
     * 发布时间
     */
    Date date;

    /**
     * 帖子话题种类
     */
    PostTopic topic;

    public String getPostID() {
        return postID;
    }

    public void setPostID(String postID) {
        this.postID = postID;
    }

    public String getTitile() {
        return titile;
    }

    public void setTitile(String titile) {
        this.titile = titile;
    }

    public String getAnthor() {
        return anthor;
    }

    public void setAnthor(String anthor) {
        this.anthor = anthor;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public PostTopic getTopic() {
        return topic;
    }

    public void setTopic(PostTopic topic) {
        this.topic = topic;
    }
}
