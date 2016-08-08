package model.stock;

/**
 * Created by kylin on 16/3/3.
 */
public class ResultMsg {

    /**
     * 是否通过该阶段的检查
     */
    private boolean pass;

    /**
     * 返回的信息
     */
    private String message;

    public ResultMsg(boolean pass, String message) {
        super();
        this.pass = pass;
        this.message = message;
    }

    public ResultMsg(){
        this.pass = false;
    }

    public ResultMsg(boolean pass){
        this.pass = pass;
        this.message = "";
    }

    public void setPass(boolean pass) {
        this.pass = pass;
    }

    public boolean isPass() {
        return pass;
    }

    public String getMessage() {
        return message;
    }
}
