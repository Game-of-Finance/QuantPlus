package data.dataservice;

import po.InfoMinePO;
import util.exception.NotFoundException;

/**
 * Created by kylin on 16/6/1.
 * All rights reserved.
 */
public interface InfoMineDataService {

    /**
     * 获取一只股票的信息地雷数据
     *
     * @param number
     * @return
     */
    InfoMinePO getStockInfoMine(String number) throws NotFoundException;

}
