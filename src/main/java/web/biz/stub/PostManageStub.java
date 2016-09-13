package web.biz.stub;

import org.springframework.stereotype.Service;
import web.biz.IPostManage;
import web.model.communication.Post;
import web.model.communication.PostBasicInfo;
import web.model.communication.PostComment;
import web.model.communication.PostViews;
import web.model.enums.PostViewAttitude;
import web.model.enums.Topic;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by kylin on 9/12/16.
 * All rights reserved.
 */
@Service
public class PostManageStub implements IPostManage {
    public boolean publish(PostBasicInfo basicInfo, String content) {
        return false;
    }

    public boolean comment(String postID, PostComment comment) {
        return false;
    }

    public void delete(String postID) {

    }

    public boolean attitude(String postID, PostViewAttitude attitude) {
        return false;
    }

    public void browse(String postID) {

    }

    public Post search(String keyword) {
        return null;
    }

    public List<Post> getAllPost() {
        List<Post> list = new ArrayList<Post>();
        for (int i = 0; i < 10; i++)
            list.add(randomPost());
        return list;
    }

    private Post randomPost() {
        Post post1 = new Post();
        PostBasicInfo basic = new PostBasicInfo();
        basic.setPostID("222");
        basic.setAuthor("王嘉琛");
        basic.setDate(new Date());
        basic.setTitle("第" + Math.random() * 10);
        basic.setTopic(Topic.list[(int) (Math.random() * 7)]);
        post1.setBasicInfo(basic);

        post1.setContent("<内容> ");
        PostViews postViews = new PostViews();
        postViews.setLikes(100);
        postViews.setThanks(200);
        postViews.setDisagrees(10);
        post1.setViews(postViews);

        return post1;
    }
}
