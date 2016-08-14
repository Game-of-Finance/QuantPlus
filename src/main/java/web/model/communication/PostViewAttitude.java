package web.model.communication;

/**
 * Created by alfred on 16/8/13.
 */
public enum PostViewAttitude {

    like("感谢"),agree("同意");

    private String attitude;


    PostViewAttitude(String attitude) {
        this.attitude = attitude;
    }
}
