package dao.service;

import model.Post;

import java.util.List;

/**
 * Created by alfred on 16/8/11.
 */
public interface PostDao {

    /**
     * 搜索
     *
     * @param sql
     * @return
     */
    List<Post> queryPost(String sql);

    /**
     * 删除指定帖子
     *
     * @param id
     * @return
     */
    int delPost(int id);


    /**
     * 功能：保存帖子到数据库(发帖)
     *
     * @param post
     * @return
     */
    int savePost(Post post);

    /**
     * 功能：点赞
     *
     * @param postId,userId
     * @return
     */
    int like(int postId,int userId);
}
