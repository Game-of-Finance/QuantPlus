package web.biz.impl;

import web.model.strategy.Root;
import web.tools.VelocityUtil;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by xyf on 2016/9/1 0001.
 */
public class PyGenerator {
    public static void pyGenerate(){
        Map values =new HashMap();
        Root root=JsonParser.ParseJson("pysrc/pytemplate/demoJson.json");
        values.put("root",root);
        //初始化
        //选股
        //择时
        //交易
        //回测
        VelocityUtil.generate("demo.vm",values,"demo.py");
        System.out.println(root.getSelectTime().getCondition().getC_MACD().getPeriod());

    }

    public static void main(String[] args) {
        pyGenerate();
    }


}
