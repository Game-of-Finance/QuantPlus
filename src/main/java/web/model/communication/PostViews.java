package web.model.communication;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by kylin on 16/8/13.
 * All rights reserved.
 */
public class PostViews {

    /**
     * 帖子ID(唯一标示符)
     */
    String postID;

    /**
     * 浏览数
     */
    int viewsNum;

    /**
     * 感谢数
     */
    int thanks;

    /**
     * 点赞数
     */
    int likes;

    /**
     * 反对数
     */
    int disagrees;

    /**
     * 回帖的内容
     */
    List<PostComment> commentList;

    public PostViews() {

    }

    public PostViews(String postID) {
        this.postID = postID;
        viewsNum = 0;
        thanks = 0;
        likes = 0;
        disagrees = 0;
        commentList = new ArrayList<PostComment>();
    }

    public String getPostID() {
        return postID;
    }

    public void setPostID(String postID) {
        this.postID = postID;
    }

    public int getViewsNum() {
        return viewsNum;
    }

    public void setViewsNum(int viewsNum) {
        this.viewsNum = viewsNum;
    }

    public int getThanks() {
        return thanks;
    }

    public void setThanks(int thanks) {
        this.thanks = thanks;
    }

    public int getLikes() {
        return likes;
    }

    public void setLikes(int likes) {
        this.likes = likes;
    }

    public int getDisagrees() {
        return disagrees;
    }

    public void setDisagrees(int disagrees) {
        this.disagrees = disagrees;
    }

    public List<PostComment> getCommentList() {
        return commentList;
    }

    public void setCommentList(List<PostComment> commentList) {
        this.commentList = commentList;
    }

    @Override
    public String toString() {
        String str = "PostViews [postID=" + postID + ",viewsNum=" + viewsNum + ", thanks=" + thanks +
                ", likes=" + likes + ", disagrees=" + disagrees;
        str += (commentList == null) ? "]" : ", comments' num=" + commentList.size() + "]";
        str += "\n";

        if(commentList!=null){
            for (PostComment comment : commentList)
                str += comment.toString() + "\n";
        }

        return str;
    }
}
