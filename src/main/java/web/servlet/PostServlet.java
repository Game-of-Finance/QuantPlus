package web.servlet;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import web.biz.IPostManage;
import web.model.communication.Post;

import javax.servlet.http.HttpServlet;
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
    public @ResponseBody
    Map<String, Object> getPostList() {
        System.out.println("getPostList");
        Map<String, Object> map = new HashedMap();
        List<Post> postList = this.iPostManage.getAllPost();
        map.put("postList", postList);
        System.out.println("map.put(postList, postList);");
        return  map;
    }

}