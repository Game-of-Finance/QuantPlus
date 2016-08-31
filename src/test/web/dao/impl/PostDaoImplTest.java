package web.dao.impl;

import junit.framework.TestCase;
import web.model.communication.Post;
import web.model.communication.PostComment;

import java.util.Date;

/**
 * Created by JiachenWang on 2016/8/30.
 */
public class PostDaoImplTest extends TestCase {

    public void testGetPost() throws Exception {
        PostDaoImpl test = new PostDaoImpl();
        Post info = test.getPost("1");
        System.out.println(info.toString());
    }

    public void testResetViews() throws Exception {
        PostDaoImpl test = new PostDaoImpl();
        Post info = test.getPost("1");
        info.getViews().setLikes(6000);
        test.resetViews(info.getViews());
    }

    public void testInsertComment() throws Exception {
        PostDaoImpl test = new PostDaoImpl();
        PostComment comment = new PostComment();
        comment.setPostID("321");
        comment.setID(321);
        comment.setAuthor("admin");
        comment.setDate(new Date());
        comment.setContent("测试内容。。。");
        test.insertComment(comment);
    }

    public void testDeleteComment() throws Exception {
        PostDaoImpl test = new PostDaoImpl();
        test.deleteComment("321", 321);
    }

    public void testDelete() throws Exception {

    }

    public void testSave() throws Exception {

    }

//    public void testGetBasicInfoByID() throws Exception {
//        PostDaoImpl test = new PostDaoImpl();
//        PostBasicInfo info = test.getBasicInfoByID("1");
//        System.out.println(info.toString());
//    }

//    public void testGetPostCommentByID() throws Exception {
//        PostDaoImpl test = new PostDaoImpl();
//        List<PostComment> info = test.getPostCommentByID("1");
//        System.out.println(info.size());
//        System.out.println(info.get(0).toString());
//    }

//    public void testGetPostViewsByID() throws Exception {
//        PostDaoImpl test = new PostDaoImpl();
//        PostViews info = test.getPostViewsByID("1");
//        System.out.println(info.toString());
//    }

}