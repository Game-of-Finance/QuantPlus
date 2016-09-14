package web.dao;

import web.model.communication.Post;
import web.model.communication.PostComment;
import web.model.communication.PostViews;
import web.model.exceptions.BadInputException;
import web.model.exceptions.NotFoundException;

import java.util.List;

/**
 * Created by JiachenWang on 2016/8/18.
 */
public interface PostDao {

    /**
     * 获得所有有效帖子编号
     * @return
     */
    List<String> getAllPost();

    /**
     * 获得新的帖子唯一指定编号
     * @return 的帖子唯一指定编号
     */
    String getNewPostID();

    /**
     * 获得新的评论编号
     * @param postID 帖子唯一指定编号
     * @return 新的评论编号
     */
    String getNewCommentID(String postID);

    /**
     * 查询指定帖子
     *
     * @param postID 编号（唯一标识符）
     * @return
     * @throws NotFoundException
     */
    Post getPost(String postID) throws NotFoundException;

    /**
     * 帖子浏览信息更新（浏览数，感谢数，点赞数，反对数）
     *
     * @param views 浏览数，感谢数，点赞数，反对数等信息
     * @return 操作结果
     * @throws BadInputException
     */
    boolean resetViews(PostViews views) throws BadInputException;

    /**
     * 新增评论
     *
     * @param comment 评论信息
     * @return 操作结果
     * @throws BadInputException
     */
    boolean insertComment(PostComment comment) throws BadInputException;

    /**
     *  删除评论
     * @param postID 帖子编号
     * @param ID 该评论编号
     * @return 操作结果
     * @throws BadInputException
     */
    boolean deleteComment(String postID, int ID) throws BadInputException;

    /**
     * 删除帖子
     *
     * @param postID 编号（唯一标识符）
     * @return 操作结果
     */
    boolean delete(String postID);

    /**
     * 新建帖子
     *
     * @param post 新帖子
     * @return 操作结果
     * @throws BadInputException
     */
    boolean save(Post post) throws BadInputException;

    /**
     * 模糊查找
     *
     * @param str 关键字
     * @return 相关帖子
     */
    List<Post> search(String str);

}
