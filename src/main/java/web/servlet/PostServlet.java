package web.servlet;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import web.biz.IPostManage;
import web.model.communication.Post;
import web.model.communication.PostBasicInfo;
import web.model.communication.PostComment;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by kylin on 16/8/16.
 * All rights reserved.
 */

@Controller
public class PostServlet extends HttpServlet {

    @Autowired
    private IPostManage iPostManage;

    @RequestMapping(value = "getPostList.do", method = RequestMethod.GET)
    public
    @ResponseBody
    Map<String, Object> getPostList() {
        Map<String, Object> map = new HashedMap();
        List<Post> postList = this.iPostManage.getAllPost();
        map.put("postList", postList);
        return map;
    }

//    @RequestMapping(value = "getPostListByType.do", method = RequestMethod.GET)
//    public @ResponseBody
//    Map<String, Object> getPostListByType(String type) {
////        System.out.println("getPostListByType");
//        Map<String, Object> map = new HashedMap();
//        List<Post> postList = this.iPostManage.getPostByType(type);
//        map.put("postList", postList);
////        System.out.println("map.put(postList, postList);");
//        return  map;
//    }

    @RequestMapping(value = "inputPost.do", method = RequestMethod.POST)
    public boolean inputPost(HttpServletRequest request) {
        String content = request.getParameter("inputHtml");
        String postType = request.getParameter("postType");
        String postTitle = request.getParameter("postTitle");

        PostBasicInfo basicInfo = new PostBasicInfo();
        basicInfo.setDate(new Date());
        basicInfo.setAuthor("admin");
        basicInfo.setTitle(postTitle);
        basicInfo.setTopic(postType);
        this.iPostManage.publish(basicInfo, content);
        return true;
    }

    @RequestMapping(value = "inputComment.do", method = RequestMethod.POST)
    public boolean inputComment(HttpServletRequest request) {
        String content = request.getParameter("inputHtml");
        String text = request.getParameter("inputText");
        String formatText = request.getParameter("inputFormatText");
        String postID = request.getParameter("postID");
        String author = request.getParameter("author");

        PostComment comment = new PostComment();
        comment.setPostID(postID);
        comment.setAuthor(author);
        comment.setDate(new Date());
        comment.setContent(text);
        this.iPostManage.comment(postID, comment);
        return true;
    }

    @RequestMapping(value = "getOnePost.do", method = RequestMethod.GET)
    public
    @ResponseBody
    Map<String, Object> getPostByID(HttpServletRequest request) {
        String id = request.getParameter("postID");
        Post returnPost = this.iPostManage.getPost(id);

        Map<String, Object> map = new HashedMap();
        if (returnPost != null)
            map.put("returnPost", returnPost);

        return map;
    }

}