package web.model.strategy;

import org.springframework.beans.factory.annotation.Autowired;
import web.dao.BackTestDao;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 *
 * 策略 实体类
 *
 */
public class Strategy {
	@Autowired
	BackTestDao backTestDao;
	
	
	//基本部分
	private int id; //策略id
	private String name;//策略名称
	private int userId; // 策略开发者的Id
	private Date createTime; //策略创建时间
	private String python; //策略的Python代码
	private Date lastModifyTime;//最后修改时间


	//回测部分,一个策略有多个回测条件，对应多个回测结果
	private Set<Integer> backTestIds =new HashSet<Integer>();
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

	//添加回测
	public void addBackTest(int backTestId){
		backTestIds.add(backTestId);
	}

	//获得rank分,rank=(income*0.8+maxDrowdown+annualizedReturn*0.2-maxDrowdown*1)*1500
	//取历次回测的最大rank分
	public double getRank(){
		Set<BackTest> backTests = backTestDao.getBackTests(getId());
		double max=0;//最大评分
		for(BackTest backTest:backTests){
			double maxDrowdown = backTest.getMaxDrowdown();//最大回测
			double annualizedReturn = backTest.getAnnualizedReturn();//年化收益
			double income = backTest.getIncome();//累计收益

			//calculate rank 1500 is base score
			double rank=(income*0.8+maxDrowdown+annualizedReturn*0.2-maxDrowdown*1)*1500;
			if(rank>max){
				max=rank;
			}
		}
		return  max;
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


	public Date getLastModifyTime() {
		return lastModifyTime;
	}

	public void setLastModifyTime(Date lastModifyTime) {
		this.lastModifyTime = lastModifyTime;
	}

    public Set<Integer> getBackTestIds() {
        return backTestIds;
    }

    public void setBackTestIds(Set<Integer> backTestIds) {
        this.backTestIds = backTestIds;
    }


	public boolean isShare() {
		return isShare;
	}

	public void setShare(boolean share) {
		isShare = share;
	}

}
