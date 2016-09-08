package web.servlet;

import com.google.gson.JsonObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import web.biz.IStrategyManage;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLDecoder;

/**
 * Created by xyf on 2016/9/7 0007.
 */
public class StrategyServlet extends HttpServlet {

    @Autowired
    private IStrategyManage strategyManage;

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     * response)
     */
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {

        doPost(request, response);// 执行doPost()方法
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     * response)
     */
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
//        if ("login".equals(action)) { // 用户登录
//            String username = request.getParameter("name");
//            String password = request.getParameter("password");
//            userManagementService.login(username, password);
//        } else if ("exit".equals(action)) {// 用户退出
//            String username = request.getParameter("name");
//            userManagementService.exit(username);
//        }
//		} else if ("save".equals(action)) { // 保存用户注册信息
//			this.save(request, response);
//		} else if ("getProvince".equals(action)) { // 获取省份信息
//			this.getProvince(request, response);
//		} else if ("getCity".equals(action)) { // 获取市县信息
//			this.getCity(request, response);
//		} else if ("checkUser".equals(action)) {// 检测用户名是否存在
//			this.checkUser(request, response);
//		} else if ("forgetPwd1".equals(action)) { // 找回密码第一步
//			this.forgetPwd1(request, response);
//		} else if ("forgetPwd2".equals(action)) { // 找回密码第二步
//			this.forgetPwd2(request, response);
//		}
    }


}
