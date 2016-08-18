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
     * 查询指定帖子
     *
     * @param ID 编号（唯一标识符）
     * @return
     * @throws NotFoundException
     */
    Post getPost(String ID) throws NotFoundException;

    /**
     * 帖子浏览信息更新（浏览数，感谢数，点赞数，反对数）
     *
     * @param ID    编号（唯一标识符）
     * @param views 浏览数，感谢数，点赞数，反对数等信息
     * @return 操作结果
     * @throws BadInputException
     */
    boolean resetViews(String ID, PostViews views) throws BadInputException;

    /**
     * 新增评论
     *
     * @param ID      编号（唯一标识符）
     * @param comment 评论信息
     * @return 操作结果
     * @throws BadInputException
     */
    boolean insertComment(String ID, PostComment comment) throws BadInputException;

    /**
     * 删除帖子
     *
     * @param ID 编号（唯一标识符）
     * @return 操作结果
     */
    boolean delete(String ID);

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
     * @param strs 字符串数组
     * @return 相关帖子
     */
    List<Post> search(String[] strs);

}
