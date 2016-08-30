package web.dao.impl;

import junit.framework.TestCase;
import web.model.communication.PostBasicInfo;
import web.model.communication.PostComment;

import java.util.List;

/**
 * Created by JiachenWang on 2016/8/30.
 */
public class PostDaoImplTest extends TestCase {
    public void testGetPost() throws Exception {

    }

    public void testResetViews() throws Exception {

    }

    public void testInsertComment() throws Exception {

    }

    public void testDelete() throws Exception {

    }

    public void testSave() throws Exception {

    }

    public void testSearch() throws Exception {

    }

    public void testGetBasicInfoByID() throws Exception {
        PostDaoImpl test = new PostDaoImpl();
        PostBasicInfo info = test.getBasicInfoByID("1");
        System.out.println(info.toString());
    }

    public void testGetPostCommentByID() throws Exception {
        PostDaoImpl test = new PostDaoImpl();
        List<PostComment> info = test.getPostCommentByID("1");
        System.out.println(info.size());
        System.out.println(info.get(0).toString());
    }
}