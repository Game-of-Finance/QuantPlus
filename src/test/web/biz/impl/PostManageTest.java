package web.biz.impl;

import junit.framework.TestCase;
import web.biz.IPostManage;
import web.model.communication.PostBasicInfo;

import java.util.Date;

/**
 * Created by JiachenWang on 2016/9/3.
 */
public class PostManageTest extends TestCase {

    public void testGetAllPost() throws Exception {
        IPostManage manage = new PostManage();
        System.out.println(manage.getAllPost().size());
    }

    public void testPublish() throws Exception {
        IPostManage manage = new PostManage();
        PostBasicInfo basic = new PostBasicInfo();
        basic.setAuthor("作者");
        basic.setDate(new Date());
        basic.setTitle("标题");
        basic.setTopic("主题");
        System.out.println(manage.publish(basic, "文章内容"));
    }

    public void testComment() throws Exception {

    }

    public void testDelete() throws Exception {
        IPostManage manage = new PostManage();
        manage.delete("0000001");
    }

    public void testAttitude() throws Exception {

    }

    public void testBrowse() throws Exception {

    }

    public void testSearch() throws Exception {

    }

}