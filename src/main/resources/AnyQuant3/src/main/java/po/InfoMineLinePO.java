package po;

/**
 * Created by JiachenWang on 2016/6/1.
 */
public class InfoMineLinePO {
    /**
     * 地雷标题
     */
    private String title;
    /**
     * 信息类型
     */
    private String type;
    /**
     * 地雷日期
     */
    private String date;
    /**
     * 地雷url
     */
    private String url;

    public InfoMineLinePO(String title, String type, String date, String url) {
        this.title = title;
        this.type = type;
        this.date = date;
        this.url = url;
    }

    public String getTitle() {
        return title;
    }

    public String getType() {
        return type;
    }

    public String getDate() {
        return date;
    }

    public String getUrl() {
        return url;
    }
}
