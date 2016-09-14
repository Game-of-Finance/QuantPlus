package web.biz;

import web.model.communication.VirtualTradePo;
import web.tools.MyMessage;

import java.util.ArrayList;

/**
 * Created by linyufan on 16/9/13.
 */
public interface ISimuTradeManage {
    /**
     * 新建交易
     * @param userid
     * @param tradename 交易名字
     * @param startfund 起始资金
     * @param starttime 开始时间
     * @return
     */
    public String addtrade(String userid , String tradename , int startfund , String starttime,String strategyid,String poolid);

    /**
     * 删除交易
     * @param userid
     * @param tradeid
     * @return
     */
    public MyMessage deletetrade(String userid , String tradeid);

    /**
     * 获取交易有关数据
     * @param userid
     * @return
     */
    public VirtualTradePo getTrade(String userid,String vid);

    /**
     * 获取所有交易
     * @param userid
     * @return
     */
    public ArrayList<VirtualTradePo> getAllTrade(String userid);

    /**
     * 终止模拟交易
     * @param userid
     * @param vid
     * @return
     */
    public MyMessage stopVTrade(String userid, String vid);

    /**
     * 重启模拟交易
     * @param userid
     * @param vid
     * @return
     */
    public MyMessage restartVTrade(String userid,String vid);


}
