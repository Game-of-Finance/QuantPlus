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
     */
    PostContent content;

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

    public PostContent getContent() {
        return content;
    }

    public void setContent(PostContent content) {
        this.content = content;
    }

    public PostViews getComment() {
        return comment;
    }

    public void setComment(PostViews comment) {
        this.comment = comment;
    }
}
