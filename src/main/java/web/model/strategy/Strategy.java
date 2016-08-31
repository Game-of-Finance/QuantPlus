package web.model.strategy;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * @author xuyafan
 * 策略 实体类
 *
 */
public class Strategy {
	//策略类型，有期权和股票
	public static final int OPTION =1; //期权
	public static final int FUTURES =2; //期货
	public static final int STOCK =3; //股票
	public static final int FOREX =4; //外汇
	
	
	//基本部分
	private int id; //策略id
	private String name;//策略名称
	private int userId; // 策略开发者的Id
	private Date createTime; //策略创建时间
	private Set<Integer> types =new HashSet<Integer>(); //策略类型,一种或者多种
	private String python; //策略的Python代码
	private String savedPython; // 上一次保存的Python代码
	private Date lastModifyTime;//最后修改时间

	
	//回测部分,一个策略有多个回测条件，对应多个回测结果
	private Set<Integer> backTestIds =new HashSet<Integer>();
    private Set<BackTest> backTestSet =new HashSet<BackTest>();

	//策略排名部分
	//用户决定是否分享该策略,默认false
	private boolean isShare=false;
	private double rank;//策略评分
	//累计收益==策略收益backtest的income
	//今日收益、最大回测、开始时间、初始资金


	public Strategy(int id, String name, int userId, Date createTime) {
		this.id = id;
		this.name = name;
		this.userId = userId;
		this.createTime = createTime;
	}



	//添加类型
	public void addType(int type){
        types.add(type);
	}

	//添加回测
	public void addBackTest(int backTestId){
		backTestIds.add(backTestId);
	}

	//计算rank分并设置
	public void calcRank(){

	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getPython() {
		return python;
	}

	public void setPython(String python) {
		this.python = python;
	}

	public String getSavedPython() {
		return savedPython;
	}

	public void setSavedPython(String savedPython) {
		this.savedPython = savedPython;
	}

	public Date getLastModifyTime() {
		return lastModifyTime;
	}

	public void setLastModifyTime(Date lastModifyTime) {
		this.lastModifyTime = lastModifyTime;
	}




    public Set<Integer> getTypes() {
        return types;
    }

    public void setTypes(Set<Integer> types) {
        this.types = types;
    }

    public Set<Integer> getBackTestIds() {
        return backTestIds;
    }

    public void setBackTestIds(Set<Integer> backTestIds) {
        this.backTestIds = backTestIds;
    }

    public Set<BackTest> getBackTestSet() {
        return backTestSet;
    }

    public void setBackTestSet(Set<BackTest> backTestSet) {
        this.backTestSet = backTestSet;
    }

	public boolean isShare() {
		return isShare;
	}

	public void setShare(boolean share) {
		isShare = share;
	}

	public double getRank() {
		return rank;
	}

	public void setRank(double rank) {
		this.rank = rank;
	}
}
