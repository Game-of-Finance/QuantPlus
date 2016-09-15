package web.model.btAndVt;

import java.util.ArrayList;

/**
 * Created by linyufan on 16/7/22.
 */
public class StockPool {

    public String userid;

    public String poolId;

    public String poolName;

    public ArrayList<String> stocklist;

    public ArrayList<SingleStockPo> stockinfolist;  //存了关于股票的信息

    public ArrayList<VirtualTradePo> vtradelist;    //存了运行于该股票池上的模拟交易

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public ArrayList<VirtualTradePo> getVtradelist() {
        return vtradelist;
    }

    public void setVtradelist(ArrayList<VirtualTradePo> vtradelist) {
        this.vtradelist = vtradelist;
    }

    public String getPoolName() {
        return poolName;
    }

    public void setPoolName(String poolName) {
        this.poolName = poolName;
    }

    public ArrayList<String> getStocklist() {
        return stocklist;
    }

    public void setStocklist(ArrayList<String> stocklist) {
        this.stocklist = stocklist;
    }

    public ArrayList<SingleStockPo> getStockinfolist() {
        return stockinfolist;
    }

    public void setStockinfolist(ArrayList<SingleStockPo> stockinfolist) {
        this.stockinfolist = stockinfolist;
    }

    public String getPoolId() {
        return poolId;
    }

    public void setPoolId(String poolId) {
        this.poolId = poolId;
    }
}
