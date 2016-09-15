package web.biz.impl;

import org.springframework.stereotype.Service;
import web.model.strategy.Root;
import web.tools.VelocityUtil;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by xyf on 2016/9/1 0001.
 */
@Service
public class PyGenerator {
    public static void pyGenerate(){
        Map values =new HashMap();
        Root root=JsonParser.ParseJson("pysrc/pytemplate/demoJson.json");
        values.put("root",root);

        VelocityUtil.generate("demo.vm",values,"demo.py");


    }

    public static void main(String[] args) {
        pyGenerate();
    }


}
