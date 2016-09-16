package web.tools.backtesting;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Created by NJU on 2016/9/4.
 */
public class BacktestingLink {
    private Statement stmt;
    private Connection conn;
    private int sid;
    private int userid;
    private String startTime;
    private String endTime;

    public BacktestingLink(int sid, int userid, String start, String end) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("成功加载MySQL驱动！");

            String url = "jdbc:mysql://115.159.106.212:3306/quantplus";    //JDBC的URL
            Connection conn;

            conn = DriverManager.getConnection(url, "root", "");
            Statement stmt = conn.createStatement(); //创建Statement对象
            System.out.println("成功连接到数据库！");
            this.stmt = stmt;
            this.sid = sid;
            this.conn = conn;
            this.userid = userid;
            this.startTime = start;
            this.endTime = end;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void close() {
        try {
            this.stmt.close();
            this.conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int getUserid() {
//        int userid = -1;
//        try {
//            String sql = "select `userid` from `backtesting` where `sid`= " + String.valueOf(sid);    //要执行的SQL
//            ResultSet rs = stmt.executeQuery(sql);//创建数据对象
//            rs.next();
//            userid = Integer.parseInt(rs.getString(1));
//            rs.close();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }

        return this.userid;
    }

    public int getSid() {
        return this.sid;
    }

    public String getStartTime() {
        String time = "";
        try {
            String sql = "select `start` from `backtesting` where `sid`= " + String.valueOf(sid) + " and `userid`" +
                    " = " + String.valueOf(userid) + " and `start` = '" + startTime + "' and `end` = '" + endTime + "'";
            ResultSet rs = stmt.executeQuery(sql);//创建数据对象
            rs.next();
            time = (rs.getString(1));
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.startTime = time;
        return time;
    }

    public String getEndTime() {
        String time = "";
        try {
            String sql = "select `end` from `backtesting` where `sid`= " + String.valueOf(sid) + " and `userid`" +
                    " = " + String.valueOf(userid) + " and `start` = '" + startTime + "' and `end` = '" + endTime + "'";
            ResultSet rs = stmt.executeQuery(sql);//创建数据对象
            rs.next();
            time = (rs.getString(1));
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.endTime = time;
        return time;
    }

    public String getResultName() {
        String result = "";
        try {
            String sql = "select `resultid` from `backtesting` where `sid`= " + String.valueOf(sid) + " and `userid`" +
                    " = " + String.valueOf(userid) + " and `start` = '" + startTime + "' and `end` = '" + endTime + "'";    //要执行的SQL
            ResultSet rs = stmt.executeQuery(sql);//创建数据对象
            rs.next();
            result = "result_" + (rs.getString(1));
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public void updateStartTime(String startTime) {
        try {
            String sql = "update backtesting set `start` = '" + startTime + "' where `sid`= " + String.valueOf(sid) + " and `userid`" +
                    " = " + String.valueOf(userid) + " and `start` = '" + this.startTime + "' and `end` = '" + this.endTime + "'";
            int count = stmt.executeUpdate(sql);//创建数据对象
            System.out.println("update " + String.valueOf(count));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updateEndTime(String endTime) {
        try {
            String sql = "update backtesting set `end` = '" + endTime + "' where `sid`= " + String.valueOf(sid) + " and `userid`" +
                    " = " + String.valueOf(userid) + " and `start` = '" + this.startTime + "' and `end` = '" + this.endTime + "'";    //要执行的SQL
            int count = stmt.executeUpdate(sql);//创建数据对象
            System.out.println("update " + String.valueOf(count));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


}

