package web.servlet;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by kylin on 16/8/16.
 * All rights reserved.
 */

@Controller
public class PostServlet {


    @RequestMapping(value = "newPost.do", method = RequestMethod.POST)
    protected ModelAndView newPost(HttpServletRequest request, HttpServletResponse response) {
        String text = request.getParameter("text");
        String formatText = request.getParameter("formatText");
        System.out.println("text="+text);
        System.out.println("formatText="+formatText);
        return null;
    }

}
