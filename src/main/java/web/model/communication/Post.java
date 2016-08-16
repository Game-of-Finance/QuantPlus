package web.model.communication;

/**
 * Created by alfred on 16/8/11.
 */
public class Post {

    /**
     * 帖子基本信息
     */
    PostBasicInfo basicInfo;

    /**
     * 帖子主题内容
     * //附：1.发表帖子可以包括文本、图片、URL、@其他注册用户等多种形式，具体参见3.2.4回复帖子。
     //2.允许发表话题的注册用户删除自己话题中的回复
     */
    String  content;

    /**
     * 帖子收到的评论,浏览信息
     */
    PostViews comment;

    public PostBasicInfo getBasicInfo() {
        return basicInfo;
    }

    public void setBasicInfo(PostBasicInfo basicInfo) {
        this.basicInfo = basicInfo;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public PostViews getComment() {
        return comment;
    }

    public void setComment(PostViews comment) {
        this.comment = comment;
    }
}
