package web.biz.impl;

import com.google.gson.Gson;
import org.springframework.stereotype.Service;
import web.model.strategy.Root;

import java.io.*;

/**
 * Created by xyf on 2016/9/1 0001.
 */
@Service
public class JsonParser {

    public static Root ParseJson(String filePath){
        Gson gson =new Gson();
        String jsonString =getJson(filePath);

        return gson.fromJson(jsonString, Root.class);

    }

    /**
     * 读取本地文件中JSON字符串
     *
     * @param fileName
     * @return
     */
    private static String getJson(String fileName) {

        StringBuilder stringBuilder = new StringBuilder();
        try {
            BufferedReader bf = new BufferedReader(new InputStreamReader(new FileInputStream(fileName),"UTF-8"));
            String line;
            while ((line = bf.readLine()) != null) {
                stringBuilder.append(line);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return stringBuilder.toString();
    }
    public static void main(String[] args) {

        Root root=JsonParser.ParseJson("pysrc/pytemplate/demoJson.json");
    }
}
