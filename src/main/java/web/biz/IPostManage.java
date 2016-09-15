package web.biz;


import web.model.communication.Post;
import web.model.communication.PostBasicInfo;
import web.model.communication.PostComment;
import web.model.enums.PostViewAttitude;

import java.util.List;

/**
 * Created by alfred on 16/8/13.
 */
public interface IPostManage {
    /**
     * 功能：发表
     *
     * @param basicInfo 帖子基本信息
     * @param content   原贴内容
     * @return
     */
    boolean publish(PostBasicInfo basicInfo, String content);

    /**
     * 对原贴的回复
     *
     * @param postID  原贴ID
     * @param comment 回复的内容
     * @return
     */
    boolean comment(String postID, PostComment comment);

    /**
     * 功能：删除
     *
     * @param postID 目标帖子ID
     */
    void delete(String postID);


    /**
     * 对帖子表态(赞同不赞同)
     *
     * @param postID 目标帖子ID
     * @param attitude 态度
     * @return 操作结果
     */
    boolean attitude(String postID, PostViewAttitude attitude);

    /**
     * 帖子被浏览一次，计数+1
     *
     * @param postID 目标帖子ID
     */
    void browse(String postID);

    /**
     * 搜索
     */
    Post search(String keyword);

    /**
     * get  post bu ID
     */
    Post getPost(String postID);

    /**
     * get all existing posts
     */
    List<Post> getAllPost();

}
