package web.model.communication;

import java.util.List;

/**
 * Created by kylin on 16/8/13.
 * All rights reserved.
 */
public class PostViews {

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
    List<PostContent> commentList;

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

    public List<PostContent> getCommentList() {
        return commentList;
    }

    public void setCommentList(List<PostContent> commentList) {
        this.commentList = commentList;
    }
}