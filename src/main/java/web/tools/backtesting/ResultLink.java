package web.tools.backtesting;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.InputStreamReader;

/**
 * Created by NJU on 2016/9/4.
 */
public class ResultLink {
    private String resultName;
//    private Statement stmt;
//    private Connection conn;

    public ResultLink(String name) {
        this.resultName = name;
//        try {
//            Class.forName("com.mysql.jdbc.Driver");
//            System.out.println("成功加载MySQL驱动！");
//
//            String url = "jdbc:mysql://572b2568442c7.sh.cdb.myqcloud.com:8161/dracarys";    //JDBC的URL
//            Connection conn;
//
//            conn = DriverManager.getConnection(url, "cdb_outerroot", "software2015");
//            Statement stmt = conn.createStatement(); //创建Statement对象
//
//            System.out.println("成功连接到数据库！");
//            this.stmt = stmt;
//            this.conn = conn;
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
    }

//    public void close() {
//        try {
//            this.stmt.close();
//            this.conn.close();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }

    public String saveToDB() {
        int value = 1;
        String out = "";
        String path = System.getProperty("user.home");
        String cmd = "";
        String system = System.getProperties().getProperty("os.name").toLowerCase();

        if (system.contains("windows")) {
            path += "\\";
//            path = path.substring(1);
            cmd += "cmd.exe /c start ";
        }
        else if (system.contains("mac")) {
            path += "/";
//            cmd += "/bin/sh -c ";
        }
        else if(system.contains(("linux"))) {
            path += "/";
        }
        String pyPath = path + "result_db.py";
        String pklPath = path + resultName + ".pkl";
        cmd += "python " + pyPath + " " + resultName + " " + pklPath;
        System.out.println(cmd);
        Runtime run = Runtime.getRuntime();
        try {

            Process process = run.exec(cmd);
            value = process.waitFor();
            BufferedInputStream in = new BufferedInputStream(process.getInputStream());
            BufferedReader inBr = new BufferedReader(new InputStreamReader(in));
            String lineStr;
            while ((lineStr = inBr.readLine()) != null)
                out += lineStr;
//                //获得命令执行后在控制台的输出信息
//                System.out.println(lineStr);// 打印输出信息
//            //检查命令是否执行失败。
//            if (process.waitFor() != 0) {
//                if (process.exitValue() == 1)//p.exitValue()==0表示正常结束，1：非正常结束
//                    System.err.println("命令执行失败!");
//            }
//            inBr.close();
//            in.close();
            process.destroy();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return String.valueOf(value) + out;
    }

    public static void main(String[] args) {
        ResultLink resultLink = new ResultLink("result_1");
        resultLink.saveToDB();
    }
}
