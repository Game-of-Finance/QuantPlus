package web.biz.impl;

import web.biz.IPostManage;
import web.model.communication.Post;
import web.model.communication.PostBasicInfo;
import web.model.communication.PostComment;
import web.model.enums.PostViewAttitude;

/**
 * Created by alfred on 16/8/13.
 */
public class PostManage implements IPostManage {
    //TODO 嘉琛,我们又改了一下接口(捂脸),麻烦啦
    public boolean publish(PostBasicInfo basicInfo, String content) {
        return false;
    }

    public boolean comment(String postID, PostComment comment) {
        return false;
    }

    public void delete(String postID) {

    }

    public void attitude(String postID, PostViewAttitude attitude) {

    }

    public Post search(String str) {
        return null;
    }
}
