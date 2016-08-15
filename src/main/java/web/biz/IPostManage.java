package web.biz;


import web.model.communication.Post;
import web.model.communication.PostBasicInfo;
import web.model.communication.PostContent;
import web.model.enums.PostViewAttitude;

/**
 * Created by alfred on 16/8/13.
 */
public interface IPostManage {
    /**
     * 功能：发表
     *
     * @param basicInfo
     * @param content
     * @return
     */
    boolean publish(PostBasicInfo basicInfo, PostContent content);

    /**
     * 功能：删除
     *
     * @param id
     */
    void delete(int id);


    /**
     * 态度(赞同不赞同)
     */
    void attitude(int id, PostViewAttitude attitude);

    /**
     * 搜索
     */
    Post search(String str);
}
