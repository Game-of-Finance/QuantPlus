package web.biz.BackTestBL;

import web.model.btAndVt.VirtualTradePo;
import web.model.enumPo.DeleteState;

import java.util.ArrayList;

/**
 * Created by linyufan on 16/9/2.
 */
public interface VirtualTradeService {


    /**
     * 新建交易
     * @param userid
     * @param tradename 交易名字
     * @param startfund 起始资金
     * @param starttime 开始时间
     * @return
     */
    public String addtrade(String userid, String tradename, int startfund, String starttime, String strategyid, String poolid);

    /**
     * 删除交易
     * @param userid
     * @param tradeid
     * @return
     */
    public DeleteState deletetrade(String userid, String tradeid);

    /**
     * 获取交易有关数据
     * @param userid
     * @return
     */
    public VirtualTradePo getTrade(String userid, String vid);

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
    public VirtualTradePo stopVTrade(String userid, String vid);

    /**
     * 重启模拟交易
     * @param userid
     * @param vid
     * @return
     */
    public VirtualTradePo restartVTrade(String userid, String vid);



}
