package web.biz.impl;

import web.biz.IPostManage;
import web.dao.PostDao;
import web.dao.impl.PostDaoImpl;
import web.model.communication.Post;
import web.model.communication.PostBasicInfo;
import web.model.communication.PostComment;
import web.model.communication.PostViews;
import web.model.enums.PostViewAttitude;
import web.model.exceptions.BadInputException;
import web.model.exceptions.NotFoundException;

import java.util.List;

/**
 * Created by alfred on 16/8/13.
 */
public class PostManage implements IPostManage {

    PostDao postDao = new PostDaoImpl();

    //TODO 嘉琛,我们又改了一下接口(捂脸),麻烦啦
    public boolean publish(PostBasicInfo basicInfo, String content) {
        Post post = new Post();
        //生成指定ID
        basicInfo.setPostID(postDao.getNewPostID());
        //内容
        post.setBasicInfo(basicInfo);
        post.setContent(content);
        post.setViews(new PostViews(basicInfo.getPostID()));
        //保存
        try {
            postDao.save(post);
        } catch (BadInputException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    public boolean comment(String postID, PostComment comment) {
        //定义编号信息
        comment.setPostID(postID);
        comment.setID(postDao.getNewCommentID(postID));
        //保存
        try {
            postDao.insertComment(comment);
        } catch (BadInputException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    public void delete(String postID) {
        postDao.delete(postID);
    }

    public boolean attitude(String postID, PostViewAttitude attitude) {
        Post post = null;
        PostViews view = null;
        try {
            post = postDao.getPost(postID);
            view = post.getViews();
        } catch (NotFoundException e) {
            e.printStackTrace();
            return false;
        }
        switch (attitude) {
            case like:
                view.setLikes(view.getLikes() + 1);
                break;
            case disagree:
                view.setDisagrees(view.getDisagrees() + 1);
                break;
            case thanks:
                view.setThanks(view.getThanks() + 1);
                break;
            default:
                return false;
        }
        //更新数据库信息
        try {
            return postDao.resetViews(view);
        } catch (BadInputException e) {
            e.printStackTrace();
        } finally {
            return false;
        }
    }

    public void browse(String postID) {
        Post post = null;
        PostViews view = null;
        try {
            post = postDao.getPost(postID);
            view = post.getViews();
        } catch (NotFoundException e) {
            e.printStackTrace();
            return;
        }
        //计数 + 1
        view.setViewsNum(view.getViewsNum() + 1);
        //更新数据库信息
        try {
            postDao.resetViews(view);
        } catch (BadInputException e) {
            e.printStackTrace();
        } finally {
            return;
        }
    }

    public Post search(String str) {
        List<Post> list = postDao.search(str);
        //TODO 优化选择
        if (list.size() == 0)
            return null;
        return list.get(0);
    }
}
