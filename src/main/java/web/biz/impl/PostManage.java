package web.biz.impl;

import web.biz.IPostManage;
import web.model.communication.Post;
import web.model.communication.PostBasicInfo;
import web.model.communication.PostContent;
import web.model.communication.PostViewAttitude;

/**
 * Created by alfred on 16/8/13.
 */
public class PostManage implements IPostManage {
    //TODO
    public boolean publish(PostBasicInfo basicInfo, PostContent content) {
        return false;
    }

    public void delete(int id) {

    }

    public void attitude(int id, PostViewAttitude attitude) {

    }

    public Post search(String str) {
        return null;
    }
}
