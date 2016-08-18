package web.dao;

import web.model.communication.Post;
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
