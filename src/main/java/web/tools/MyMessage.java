package web.tools;

/**
 * Created by alfred on 16/8/12.
 */
public class MyMessage {

    boolean pass;

    String message;

    public MyMessage() {
        this.pass = true;
    }

    public MyMessage(boolean pass, String message) {
        this.pass = pass;
        this.message = message;
    }

    public boolean isPass() {
        return pass;
    }

    public String getMessage() {
        return message;
    }
}
