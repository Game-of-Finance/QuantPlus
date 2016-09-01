package web.model.communication;

import java.util.Date;

/**
 * Created by kylin on 16/8/16.
 * All rights reserved.
 */
public class PostComment {

    /**
     * 帖子ID(唯一标示符)
     */
    String postID;

    /**
     * 该评论ID
     */
    String ID;

    /**
     * 作者
     */
    String author;

    /**
     * 发布时间
     */
    Date date;

    /**
     * 回复的内容
     */
    String content;
//
//    /**
//     * 对评论的再评论
//     */
//    List<PostComment> comments;

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getPostID() {
        return postID;
    }

    public void setPostID(String postID) {
        this.postID = postID;
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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "PostComment [postID=" + postID + ", ID=" + ID + ", author=" + author + ", date=" + date + ", content=" + content + "]";
    }

//    public List<PostComment> getComments() {
//        return comments;
//    }
//
//    public void setComments(List<PostComment> comments) {
//        this.comments = comments;
//    }
}
