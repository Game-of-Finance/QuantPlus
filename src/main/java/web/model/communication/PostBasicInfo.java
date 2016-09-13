package web.model.communication;

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
    String title;

    /**
     * 作者
     */
    String author;

    /**
     * 发布时间
     */
    Date date;

    /**
     * 帖子话题种类
     */
    String topic;

    public String getPostID() {
        return postID;
    }

    public void setPostID(String postID) {
        this.postID = postID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    @Override
    public String toString() {
        return "PostBasicInfo [postID=" + postID + ", title=" + title + ", author=" + author + ", date=" + date + ", topic=" + topic + "]";
    }
}
