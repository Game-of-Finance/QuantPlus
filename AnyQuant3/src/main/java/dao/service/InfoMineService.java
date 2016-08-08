package dao.service;

import dao.entity.InfoMineDao;
import util.exception.NotFoundException;

import java.util.List;

/**
 * Created by JiachenWang on 2016/6/6.
 */
public interface InfoMineService {

    /**
     * 获得行业地雷信息
     * @param number 股票编号
     * @return
     * @throws NotFoundException
     */
    public List<InfoMineDao> getStockInfoMine(String number) throws NotFoundException;
}
