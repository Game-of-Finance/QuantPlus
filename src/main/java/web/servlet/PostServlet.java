package web.servlet;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by kylin on 16/8/16.
 * All rights reserved.
 */

@Controller
@RequestMapping("read.do")
public class PostServlet {


    @RequestMapping(params = "method=getInput")
    protected ModelAndView getInput(HttpServletRequest request
            , HttpServletResponse response) {
        String text = request.getParameter("text");
        String formatText = request.getParameter("formatText");
        System.out.println("text="+text);
        System.out.println("formatText="+formatText);
        return null;
    }

}
