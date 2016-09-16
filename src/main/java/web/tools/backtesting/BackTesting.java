package web.tools.backtesting;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Created by NJU on 2016/9/4.
 */
public class BackTesting {
    private int sid;
    private int userid;
    private String resultname;
    private int initMoney;

    private BacktestingLink backtestingLink;
    private StrategyLink strategyLink;
    private ResultLink resultLink;

    public BackTesting(int sid, int userid, String start, String end, int initMoney) throws ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        System.out.println("成功加载MySQL驱动！");
        int count = 0;

        String url = "jdbc:mysql://115.159.106.212:3306/quantplus";    //JDBC的URL
        Connection conn;
        try {
            conn = DriverManager.getConnection(url, "root", "");
            Statement stmt = conn.createStatement(); //创建Statement对象
            System.out.println("成功连接到数据库！");

            String sql = "insert into backtesting (sid, userid, `start`, `end`, init_money) values (" + String.valueOf(sid) +
                    ", " + String.valueOf(userid) + ", '" + start + "', '" + end + "', " + String.valueOf(initMoney) + ")";

            count = stmt.executeUpdate(sql);  // 执行插入操作的sql语句，并返回插入数据的个数

        } catch (SQLException e) {
            e.printStackTrace();
        }

        System.out.println("向video表中插入 " + count + " 条数据"); //输出插入操作的处理结果
        BacktestingLink backtestingLink = new BacktestingLink(sid, userid, start, end);
        StrategyLink strategyLink = new StrategyLink(sid);
        this.backtestingLink = backtestingLink;
        this.strategyLink = strategyLink;
        this.sid = backtestingLink.getSid();
        this.userid = backtestingLink.getUserid();
        this.resultname = backtestingLink.getResultName();
        this.resultLink = new ResultLink(resultname);
        this.initMoney = initMoney;
    }

    public BackTesting(int sid, int userid, String start, String end) throws ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        System.out.println("成功加载MySQL驱动！");
        int count = 0;

        String url = "jdbc:mysql://572b2568442c7.sh.cdb.myqcloud.com:8161/dracarys";    //JDBC的URL
        Connection conn;
        try {
            conn = DriverManager.getConnection(url, "cdb_outerroot", "software2015");
            Statement stmt = conn.createStatement(); //创建Statement对象
            System.out.println("成功连接到数据库！");

            String sql = "insert into backtesting (sid, userid, `start`, `end`, init_money) values (" + String.valueOf(sid) +
                    ", " + String.valueOf(userid) + ", '" + start + "', '" + end + "', " + String.valueOf(initMoney) + ")";

            count = stmt.executeUpdate(sql);  // 执行插入操作的sql语句，并返回插入数据的个数

        } catch (SQLException e) {
            e.printStackTrace();
        }

        System.out.println("向video表中插入 " + count + " 条数据"); //输出插入操作的处理结果
        BacktestingLink backtestingLink = new BacktestingLink(sid, userid, start, end);
        StrategyLink strategyLink = new StrategyLink(sid);
        this.backtestingLink = backtestingLink;
        this.strategyLink = strategyLink;
        this.sid = backtestingLink.getSid();
        this.userid = backtestingLink.getUserid();
        this.resultname = backtestingLink.getResultName();
        this.resultLink = new ResultLink(resultname);
        this.initMoney = 10000;
    }
//    public void getPyCode() {
//        strategyLink.getPy();
////    }

    public String runBacktesting() {
        int exitValue = 1;
        String out = "";
        String reOut = "1";
        boolean isSaved = false;
        strategyLink.getPy();

        String path = System.getProperty("user.home");
        String cmd = "";
        String system = System.getProperties().getProperty("os.name").toLowerCase();
//        System.out.println(system);
        if (system.contains("windows")) {
//            path = path.substring(1);
            path += "\\";
            cmd += "cmd.exe /c start ";
        }
        else if (system.contains("mac")) {
//            cmd += "/bin/sh -c ";
            path += "/";
        }
        else if(system.contains(("linux"))) {
            path += "/";

        }

        String start = backtestingLink.getStartTime();
        String end = backtestingLink.getEndTime();


        String scriptPath = path + "strategy_" + String.valueOf(sid) + ".py";
        String outPath = path + resultname + ".pkl";

        File file=new File(scriptPath);
        long startTime=System.currentTimeMillis();
        long endTime=System.currentTimeMillis();
        while (!file.exists()) {
//            if (endTime - startTime >= 3000) {
//                return "1, 1";
//            }
        }

        cmd += "rqalpha run -f " + scriptPath + " -s " + start + " -e " + end + " -i " + String.valueOf(initMoney) +
                " -o " +  outPath + " --no-plot";
        System.out.println(cmd);
        Runtime run = Runtime.getRuntime();
        try {

            Process process = run.exec(cmd);
            InputStream is = process.getInputStream();
            BufferedReader reader = new BufferedReader(new InputStreamReader(is));
            String line;
            while((line = reader.readLine())!= null){
                out += line ;
            }
//            StreamGobbler errorGobbler = new StreamGobbler(process.getErrorStream(), "ERROR");
//            StreamGobbler outputGobbler = new StreamGobbler(process.getInputStream(), "OUTPUT");
//            errorGobbler.start();
//            outputGobbler.start();
            exitValue = process.waitFor();
            process.destroy();

            file=new File(outPath);
            startTime=System.currentTimeMillis();

            while (!file.exists()) {
                endTime=System.currentTimeMillis();
                if (endTime - startTime >= 60000) {
                    break;
                }
            }
            isSaved = file.exists();

        } catch (Exception e) {
            e.printStackTrace();
        }

        if (isSaved) {
            file=new File(outPath);
            reOut = resultLink.saveToDB();
            file.delete();
        }
        file = new File(scriptPath);
        file.delete();
        return reOut.substring(0, 1) + " " + String.valueOf(exitValue) + "\n" + reOut.substring(1) + "\n" + out;
    }

//    public void saveToDB() {
//        resultLink.saveToDB();
//    }

    public void updateStartTime(String start) {
        this.backtestingLink.updateStartTime(start);
    }

    public void updateEndTime(String end) {
        this.backtestingLink.updateStartTime(end);
    }

    public static void main(String[] args) {
        try {

            BackTesting backTesting = new BackTesting(102, 2, "2016-08-30", "2016-09-09", 10000);

//        System.out.println("===========os.name:"+System.getProperties().getProperty("os.name"));
//        backTesting.getPyCode();
            System.out.println(backTesting.runBacktesting());
//        backTesting.saveToDB();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
