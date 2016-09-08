package web.servlet;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;

/**
 * Created by Administrator on 2016/9/8 0008.
 */
@Controller
@RequestMapping("/demo")
public class DemoController {


    //接收前台传过来的字符串格式的json对象，在后台进行解析
    @ResponseBody
    @RequestMapping(value = "/json", method = RequestMethod.POST)
    public String resolveJsonObject(@RequestBody UserDemo user) throws IOException {
        System.out.println(user.getName() + user.getAge());
        return "success";
    }


    private class UserDemo {
        private String name;
        private int age;

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public int getAge() {
            return age;
        }

        public void setAge(int age) {
            this.age = age;
        }
    }
}
