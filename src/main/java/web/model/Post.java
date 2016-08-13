package web.model;

import java.util.Date;

/**
 * Created by alfred on 16/8/11.
 */
public class Post {
    private int id = 0;// 帖子ID号
    private String title = "";// 帖子标题
    private String address = "";// 帖子图片地址
    private Date writeTime = null;// 写帖子的时间
    private int userid = 0;// 用户ID
    private String username = "";// 用户名
    private int likes = 0;



    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getWriteTime() {
        return writeTime;
    }

    public void setWriteTime(Date writeTime) {
        this.writeTime = writeTime;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public int getlikes() {
        return likes;
    }

    public void setlikes(int likes) {
        this.likes = likes;
    }


}
