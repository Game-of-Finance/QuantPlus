package model.stock;

/**
 * Created by Seven on 16/3/11.
 */
public class ConditionSelect {
    //筛选条件名称
    private String field;
    //起止数据
    private String fromNum,toNum;

    public ConditionSelect(String feild,String fromNum,String toNum){
        this.field=feild;
        this.fromNum=fromNum;
        this.toNum=toNum;
    }

	public String getField() {
		return field;
	}

	public String getFromNum() {
		return fromNum;
	}

	public String getToNum() {
		return toNum;
	}
    
    
}
