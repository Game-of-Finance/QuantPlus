package web.py;

import java.io.InputStream;
import java.util.Scanner;

/**
 *  QuantPlus/web.py/ScriptException.java
 *  2016年8月16日 上午8:40:05
 *  @Author cxworks
 *
 */

public class ScriptException extends Exception {
	public ScriptException(Exception e) {
		super(e);
	}
	public ScriptException(String inputStream) {
		super(inputStream);
		
		
	}
}
