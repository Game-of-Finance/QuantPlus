package util.io;

import model.stock.ResultMsg;

import java.io.*;
import java.util.ArrayList;
import java.util.List;


/**
 * Created by kylin on 16/3/7.
 */
public class FileIOHelper {

    /**
     * 读取目录根目录下所有文件名称
     *
     * @param path 根目录
     * @return 所有文件名称
     */
    public static List<String> getFileNames(String path) {

        File file = new File(path);
        File[] array = file.listFiles();

        List<String> stringList = new ArrayList<>();

        for (int i = 0; i < array.length; i++) {
            if (array[i].isFile())
                stringList.add(array[i].getName());
        }
        return stringList;
    }

    /**
     * 读取本地文本文件
     *
     * @param filePath 文件路径
     * @return 文件内容
     */
    public static String readTxtFile(String filePath) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(filePath);
        InputStreamReader inputStreamReader = new InputStreamReader(fileInputStream, "UTF-8");
        BufferedReader reader = new BufferedReader(inputStreamReader);
        String line, result = "";
        while ((line = reader.readLine()) != null)
            result += line;
//        reader.close();
        return result;
    }

    /**
     * 读取本地文本文件
     *
     * @param filePath 文件路径
     * @return 文件内容
     */
    public static ArrayList<String> readTxtFileLines(String filePath) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(filePath);
        InputStreamReader inputStreamReader = new InputStreamReader(fileInputStream, "UTF-8");
        BufferedReader reader = new BufferedReader(inputStreamReader);
        ArrayList<String> strings = new ArrayList<>();
        String line, result = "";
        while ((line = reader.readLine()) != null)
            strings.add(line);
//        reader.close();
        return strings;
    }


    /**
     * 创建文本文件
     *
     * @param content 文本内容
     * @param path    文件路径
     * @return 创建结果
     */
    public static ResultMsg creatTxtFile(String content, String path) throws IOException {
        File file = new File(path);
        if (!file.exists())
            file.createNewFile();

        return FileIOHelper.writeTxtFile(content, path);
    }

    /**
     * 在指定路径下创建指定文本文件
     *
     * @param content  文件内容
     * @param dir      文件目录
     * @param filepath 文件名称
     * @return 创建结果
     */
    public static ResultMsg creaTxtFileInDirs(String content, String dir, String filepath) throws IOException {

        File file = new File(dir);
        if (!file.exists())
            file.mkdirs();

        File file2 = new File(filepath);
        if (!file2.exists())
            file2.createNewFile();

        return FileIOHelper.writeTxtFile(content, filepath);

    }

    /**
     * 输出文本文件内容
     *
     * @param content 文件内容
     * @param path    路径
     * @return 结果
     */
    public static ResultMsg writeTxtFile(String content, String path) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(path);
        OutputStreamWriter writer = new OutputStreamWriter(fileOutputStream, "UTF-8");
        BufferedWriter bufferedWriter = new BufferedWriter(writer);

        bufferedWriter.write(content);

        bufferedWriter.close();
        writer.close();
        fileOutputStream.close();

        return new ResultMsg(true);
    }

    /**
     * 输出序列化文件
     *
     * @param object 序列化对象
     * @param path   路径
     * @return 结果
     */
    public static ResultMsg writeObject(Serializable object, String path) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(path);
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(fileOutputStream);

        objectOutputStream.writeObject(object);

        objectOutputStream.close();
        fileOutputStream.close();

        return new ResultMsg(true);
    }

    /**
     * 读取序列化文件
     *
     * @param path 路径
     * @return 文件内容
     */
    public static Object readObject(String path) throws ClassNotFoundException, IOException {
        FileInputStream fileInputStream = new FileInputStream(path);
        ObjectInputStream objectInputStream = new ObjectInputStream(fileInputStream);
        Object object = objectInputStream.readObject();
//        objectInputStream.close();
        return object;
    }
}
