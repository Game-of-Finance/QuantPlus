package util.exception;

/**
 * Created by kylin on 16/3/18.
 */
public class MyException extends Exception {

    String message;

    public MyException(String msg) {
        super(msg);
        this.message = msg;
    }

    @Override
    public String getMessage() {
        return message;
    }
}
