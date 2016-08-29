package web.model.enums;

/**
 * Created by alfred on 16/8/13.
 */
public enum PostViewAttitude {

    like("感谢"),agree("同意");

    private String attitude;

    PostViewAttitude(String attitude) {
        this.attitude = attitude;
    }

    public String getAttitude() {
        return attitude;
    }
}