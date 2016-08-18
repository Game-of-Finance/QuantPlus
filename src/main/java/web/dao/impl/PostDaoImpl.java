package web.dao.impl;

import web.dao.PostDao;
import web.model.communication.Post;
import web.model.communication.PostComment;
import web.model.communication.PostViews;
import web.model.exceptions.BadInputException;
import web.model.exceptions.NotFoundException;

import java.util.List;

/**
 * Created by JiachenWang on 2016/8/18.
 */
public class PostDaoImpl implements PostDao {
    public Post getPost(String ID) throws NotFoundException {
        return null;
    }

    public boolean resetViews(String ID, PostViews views) throws BadInputException {
        return false;
    }

    public boolean insertComment(String ID, PostComment comment) throws BadInputException {
        return false;
    }

    public boolean delete(String ID) {
        return false;
    }

    public boolean save(Post post) throws BadInputException {
        return false;
    }

    public List<Post> search(String[] strs) {
        return null;
    }
}
