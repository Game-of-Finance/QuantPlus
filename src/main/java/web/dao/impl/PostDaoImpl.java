package web.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import web.dao.PostDao;
import web.dao.util.MybatisUtils;
import web.dao.util.PostOperation;
import web.model.communication.Post;
import web.model.communication.PostComment;
import web.model.communication.PostViews;
import web.model.exceptions.BadInputException;
import web.model.exceptions.NotFoundException;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by JiachenWang on 2016/8/18.
 */
@SuppressWarnings("restriction")
@Repository("postDao")
@Transactional
public class PostDaoImpl implements PostDao {

    SqlSession session;
    PostOperation postOperation;

    public List<String> getAllPost() {
        List<String> list = new ArrayList<String>();
        try {
            session = MybatisUtils.getSession();
            postOperation = session
                    .getMapper(PostOperation.class);
            list = postOperation.getAllPost();
            session.commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.rollback();
        } finally {
            session.close();
        }
        return list;
    }

    public String getNewPostID() {
        int ID = 0;
        try {
            session = MybatisUtils.getSession();
            postOperation = session
                    .getMapper(PostOperation.class);
            ID = postOperation.getNewPostID();
            session.commit();
        } catch (Exception e) {
//            e.printStackTrace();
//            session.rollback();
        } finally {
            session.close();
        }
        return String.format("%07d", ++ID);
    }

    public String getNewCommentID(String postID) {
        int comentID = 0;
        try {
            session = MybatisUtils.getSession();
            postOperation = session
                    .getMapper(PostOperation.class);
            comentID = postOperation.getNewCommentID(postID);
            session.commit();
        } catch (Exception e) {
//            e.printStackTrace();
//            session.rollback();
        } finally {
            session.close();
        }
        return String.format("%05d", ++comentID);
    }

    public Post getPost(String postID) throws NotFoundException {
        Post post = null;
        try {
            session = MybatisUtils.getSession();
            postOperation = session
                    .getMapper(PostOperation.class);
            post = postOperation.getPostMainByID(postID);
            //基本信息
            post.setBasicInfo(postOperation.getBasicInfoByID(postID));
            //评论及阅览信息
            PostViews views = postOperation.getPostViewsByID(postID);
            views.setCommentList(postOperation.getPostCommentByID(postID));
            post.setViews(views);
            session.commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.rollback();
        } finally {
            session.close();
        }
        if (post == null)
            throw new NotFoundException("用户不存在");

        return post;
    }

    public boolean resetViews(PostViews views) throws BadInputException {
        Post post = null;
        try {
            post = this.getPost(views.getPostID());
        } catch (NotFoundException e) {
            throw new BadInputException("输入信息有误！");
        }
        try {
            session = MybatisUtils.getSession();
            postOperation = session
                    .getMapper(PostOperation.class);
            post.setViews(views);
            postOperation.updateViews(post.getViews());
            session.commit();
        } catch (Exception e) {
            session.rollback();
            return false;
        } finally {
            session.close();
        }

        return true;
    }

    public boolean insertComment(PostComment comment) throws BadInputException {
        try {
            session = MybatisUtils.getSession();
            postOperation = session
                    .getMapper(PostOperation.class);
            postOperation.insertComment(comment);
            session.commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.rollback();
            return false;
        } finally {
            session.close();
        }

        return true;
    }

    public boolean deleteComment(String postID, int ID) throws BadInputException {
        try {
            session = MybatisUtils.getSession();
            postOperation = session
                    .getMapper(PostOperation.class);
            postOperation.deleteComment(postID, ID);
            session.commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.rollback();
            return false;
        } finally {
            session.close();
        }

        return true;
    }

    public boolean delete(String postID) {
        try {
            session = MybatisUtils.getSession();
            postOperation = session
                    .getMapper(PostOperation.class);
            postOperation.deletePostMain(postID);
            postOperation.deleteBasicInfo(postID);
            postOperation.deletePostViews(postID);
            postOperation.deleteComments(postID);
            session.commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.rollback();
            return false;
        } finally {
            session.close();
        }

        return true;
    }

    public boolean save(Post post) throws BadInputException {
        try {
            session = MybatisUtils.getSession();
            postOperation = session
                    .getMapper(PostOperation.class);
            postOperation.insertPostMain(post);
            postOperation.insertBasicInfo(post.getBasicInfo());
            postOperation.insertPostViews(post.getViews());
            for (PostComment comment : post.getViews().getCommentList()) {
                postOperation.insertComment(comment);
            }
            session.commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.rollback();
            return false;
        } finally {
            session.close();
        }

        return true;
    }

    public List<Post> search(String str) {
        List<String> list = null;
        List<Post> posts = new ArrayList<Post>();
        try {
            session = MybatisUtils.getSession();
            postOperation = session
                    .getMapper(PostOperation.class);
            list = postOperation.search(str);
//            System.out.println(list.size() + "hhh");
            session.commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.rollback();
        } finally {
            session.close();
        }

        for (String id : list) {
            Post post = null;
            try {
                post = this.getPost(id);
            } catch (NotFoundException e) {
                continue;
            }
            posts.add(post);
        }
        return posts;
    }

//    public PostBasicInfo getBasicInfoByID(String postID) {
//        PostBasicInfo info = null;
//        try {
//            session = MybatisUtils.getSession();
//            postOperation = session
//                    .getMapper(PostOperation.class);
//            info = postOperation.getBasicInfoByID(postID);
//            session.commit();
//        } finally {
//            session.close();
//        }
//        return info;
//    }

//    public List<PostComment> getPostCommentByID(String postID) {
//        List<PostComment> info = null;
//        try {
//            session = MybatisUtils.getSession();
//            postOperation = session
//                    .getMapper(PostOperation.class);
//            info = postOperation.getPostCommentByID(postID);
//            session.commit();
//        } finally {
//            session.close();
//        }
//        return info;
//    }
////
//    public PostViews getPostViewsByID(String postID) {
//        PostViews views = null;
//        try {
//            session = MybatisUtils.getSession();
//            postOperation = session
//                    .getMapper(PostOperation.class);
//            views = postOperation.getPostViewsByID(postID);
//            session.commit();
//        } finally {
//            session.close();
//        }
//        return views;
//    }

}
