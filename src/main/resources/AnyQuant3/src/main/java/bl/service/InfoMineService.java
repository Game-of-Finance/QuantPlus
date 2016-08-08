package bl.service;

import model.stock.InfoMine;
import util.exception.NotFoundException;

/**
 * Created by kylin on 16/6/1.
 * All rights reserved.
 */
public interface InfoMineService {

    /**
     * 得到一个股票的信息地雷
     * @param number 股票代码
     * @return
     */
    InfoMine getInfoMine(String number) throws NotFoundException;

}
