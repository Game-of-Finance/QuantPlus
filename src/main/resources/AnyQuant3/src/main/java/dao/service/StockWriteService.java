package dao.service;

import model.stock.ResultMsg;
import po.StockPO;

/**
 * Created by JiachenWang on 2016/5/12.
 */
public interface StockWriteService {

    /**
     * 在更新股票数据
     * @param po 单股信息封装集合
     * @return 操作信息
     */
    ResultMsg insertStockAttrs(StockPO po);

}
