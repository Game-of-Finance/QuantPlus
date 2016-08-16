package web.py;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Scanner;

import org.aspectj.apache.bcel.classfile.CodeException;

/**
 *  QuantPlus/web.py/Zipline.java
 *  2016年8月14日 上午7:49:21
 *  @Author cxworks
 *
 */

public class Zipline {
	/**
	 * 調用回測返回結果
	 * @param scriptLocation 代碼位置：xx/xx/xx.py
	 * @param start yyyy-MM-dd
	 * @param end   yyyy-MM-dd
	 * @param output 結果輸出位置: xx/xx/xx.pickle
	 * @param money 初始的資金數
	 * @return String xx/xx/xx.csv與pickle文件同名
	 * @throws ScriptException 用戶的腳本錯誤
	 * 
	 * @exception FileNotFound 腳本未找到
	 * 
	 */
	public static String  backprobe(String scriptLocation,String start,String end,String output,double money)
			throws FileNotFoundException, ScriptException{
		File file=new File(scriptLocation);
		if (!file.exists()) {
			throw new FileNotFoundException();
		}
		String[] cmd={"zipline","-f",scriptLocation,"-o",output,"-s",start,"-e",end,"--capital-base",Double.toString(money),"-b","quantplusbundles"};
		try {
			Process process=Runtime.getRuntime().exec(cmd);
			process.waitFor();
			if (process.exitValue()==0) {
				String[] transCMD={"python","pickle2csv.py",output};
				Process process2=Runtime.getRuntime().exec(transCMD);
				process2.waitFor();
				InputStream inputStream=process2.getInputStream();
				Scanner scanner =new Scanner(inputStream);
				StringBuffer stringBuffer=new StringBuffer();
				while (scanner.hasNext()) {
					stringBuffer.append(scanner.nextLine());
				}
				return stringBuffer.toString();
			}
			else {
				InputStream error=process.getErrorStream();
				Scanner scanner=new Scanner(error);
				StringBuffer stringBuffer=new StringBuffer();
				while (scanner.hasNext()) {
					stringBuffer.append(scanner.nextLine());
				}
				throw new ScriptException(stringBuffer.toString());
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new ScriptException(e);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new ScriptException(e);
		}
	}
}
