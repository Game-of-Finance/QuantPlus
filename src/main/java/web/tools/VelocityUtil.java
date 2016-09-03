package web.tools;

import org.apache.velocity.Template;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.Velocity;
import org.apache.velocity.app.VelocityEngine;

import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

/*
    python 代码生成器，利用pyres/pytemplate下的模板
 */
public class VelocityUtil {
    private static  VelocityEngine ve;

    public static  void init(){
        ve = new VelocityEngine();
        ve.setProperty(Velocity.ENCODING_DEFAULT, "UTF-8");
        ve.setProperty(Velocity.OUTPUT_ENCODING, "UTF-8");
        //设置velocity资源加载方式为file
        ve.setProperty("resource.loader", "file");
        //设置velocity资源加载方式为file时的处理类
        ve.setProperty("file.resource.loader.class", "org.apache.velocity.runtime.resource.loader.FileResourceLoader");

//        ve.setProperty(RuntimeConstants.RESOURCE_LOADER, "class");
//        ve.setProperty("classpath.resource.loader.class", ClasspathResourceLoader.class.getName());
        ve.init();
    }

    /**
     *
     * @param template 模板名
     * @param values 设置数值
     * @param pyGeneratedName 生成的Python文件名
     */
    public static void generate(String template, Map values,String pyGeneratedName){
        init();
        Template actionTpt = ve.getTemplate("pysrc/pytemplate/"+template,"UTF-8");

        VelocityContext ctx = new VelocityContext(values);

        merge(actionTpt,ctx,"pysrc/pytemplate/"+pyGeneratedName);

        System.out.println("generate python successed...");
    }

	public static void main(String[] args) {
        Map values =new HashMap();
        values.put("startDate","2015-08-16");
        values.put("endDate","2016-08-16");
        values.put("initialMoney","10000");
        values.put("unitTimeString","每天");
        values.put("frequency","15");
        values.put("number","4");

        //		ctx.put("classNameLowCase", "teacher");
//		ctx.put("classNameUpCase", "Teacher");
//		String[][] attrs = {
//				{"Integer","id"},
//				{"String","name"},
//				{"String","serializeNo"},
//				{"String","titile"},
//				{"String","subject"}
//		};
//		ctx.put("attrs", attrs);
		generate("BasicTp.vm",values,"test.py");

	}

	private static void merge(Template template, VelocityContext ctx, String path) {
		PrintWriter writer = null;
		try {
			writer = new PrintWriter(path,"UTF-8");
			template.merge(ctx, writer);
			writer.flush();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } finally {
			writer.close();
		}
	}
	
}
