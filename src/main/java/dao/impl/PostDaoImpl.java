package dao.impl;

import model.Post;
import tools.ConnDB;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by alfred on 16/8/11.
 */
public class PostDaoImpl {

    private ConnDB conn = null;// 创建数据库连接对象

    public PostDaoImpl() {
        conn = new ConnDB();// 实例化数据库连接对象
    }

    public List<Post> queryPost(String sql){
        ResultSet rs = conn.executeQuery(sql);// 执行查询语句
        List<Post> list = new ArrayList<Post>();
        try {// 捕获异常

            while (rs.next()) {
                Post post = new Post();
                post.setId(rs.getInt(1));// 获取并设置ID
                post.setTitle(rs.getString(2));// 获取并设置日记标题
                post.setAddress(rs.getString(3));// 获取并设置图片地址
                Date date;
                try {
                    date = DateFormat.getDateTimeInstance().parse(
                            rs.getString(4));
                    post.setWriteTime(date);// 设置写日记的时间
                } catch (ParseException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();// 输出异常信息到控制台
                }

                post.setUserid(rs.getInt(5));// 获取并设置用户ID
                post.setUsername(rs.getString(6));// 获取并设置用户名
                list.add(post);// 将日记信息保存到list集合中

            }

        } catch (SQLException e) {
            e.printStackTrace();// 输出异常信息
        } finally {
            conn.close();// 关闭数据库连接
        }
        return list;
    }

    public int delPost(int id){
        //TODO
        String sql = "DELETE FROM tb_diary WHERE id=" + id;
        int ret = 0;
        try {
            ret = conn.executeUpdate(sql);// 执行更新语句
        } catch (Exception e) {
            e.printStackTrace();// 输出异常信息
        } finally {
            conn.close();// 关闭数据连接
        }
        return ret;
    }


    public int savePost(Post post){
        //TODO
        String sql = "";		//保存数据的SQL语句
        System.out.println("diary.getUserid()");
        int ret = conn.executeUpdate(sql);// 执行更新语句
        conn.close();// 关闭数据库连接
        return ret;
    }

    public int like(int postId,int userId){
        //TODO sql语句,喜欢数++
        String sql = "DELETE FROM tb_diary WHERE id=" + postId;

        int ret = 0;
        try {
            ret = conn.executeUpdate(sql);// 执行更新语句
        } catch (Exception e) {
            e.printStackTrace();// 输出异常信息
        } finally {
            conn.close();// 关闭数据连接
        }
        return ret;
    }
}
