package web.model.strategy.json;

import com.google.gson.Gson;

import java.io.*;

/**
 * Created by xyf on 2016/9/1 0001.
 */
public class JsonParser {

    public static void ParseJson(){
        Gson gson =new Gson();
        String jsonString =getJson("pysrc/pytemplate/postJson.json");
        System.out.println(jsonString);
        Root root = gson.fromJson(jsonString, Root.class);
        System.out.println(root.getTrade().getCycle());
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
        JsonParser.ParseJson();
    }
}
