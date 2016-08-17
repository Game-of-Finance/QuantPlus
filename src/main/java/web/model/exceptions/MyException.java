package web.model.exceptions;


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
