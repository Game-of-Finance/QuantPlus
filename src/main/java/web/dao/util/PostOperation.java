package web.dao.util;

import org.apache.ibatis.annotations.Select;
import web.model.communication.PostBasicInfo;
import web.model.communication.PostComment;

import java.util.List;

/**
 * Created by JiachenWang on 2016/8/16.
 */
public interface PostOperation {

    @Select("select * from post_basic where postID=#{postID}")
    public PostBasicInfo getBasicInfoByID(String postID);

    @Select("select * from post_comment where postID=#{postID}")
    public List<PostComment> getPostCommentByID(String postID);

}
