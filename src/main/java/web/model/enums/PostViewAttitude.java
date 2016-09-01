package web.model.enums;

/**
 * Created by alfred on 16/8/13.
 */
public enum PostViewAttitude {

    thanks("感谢"),like("点赞"),disagree("反对");

    private String attitude;

    PostViewAttitude(String attitude) {
        this.attitude = attitude;
    }

    public String getAttitude() {
        return attitude;
    }
}
