package dao.stub;

import model.Post;
import  dao.service.PostDao;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by alfred on 16/8/11.
 */
public class PostStub implements PostDao {

    public List<Post> queryPost(String sql) {
        return new ArrayList<Post>(){
            {
                Post diary = new Post();
                diary.setAddress("addr");
                diary.setId(1);
                diary.setTitle("title");
                diary.setUserid(22);
                diary.setWriteTime(new Date());
                diary.setUsername("username");

            }
        };
    }

    public int delPost(int id) {
        return 0;
    }

    public int savePost(Post post) {
        return 0;
    }

    public int like(int postId,int userId) {
        return 0;
    }
}
