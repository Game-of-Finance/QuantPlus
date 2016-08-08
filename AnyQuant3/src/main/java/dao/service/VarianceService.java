package dao.service;

import dao.entity.Variance;
import util.exception.NotFoundException;

import java.util.List;

/**
 * Created by JiachenWang on 2016/6/6.
 */
public interface VarianceService {
    /**
     * 获得总体稳定性（方差）情况
     * @param time 月份
     * @return
     * @throws NotFoundException
     */
    public Variance getVariance(String time, String stock_num) throws NotFoundException;

    /**
     * 获得总体稳定性（方差）情况
     * @param time 月份
     * @return
     * @throws NotFoundException
     */
    public List<Variance> getAllVariance(String time) throws NotFoundException;

    /**
     * 储存总体稳定性（方差）情况
     * @param var
     * @throws NotFoundException
     */
    public void setAllVariance(List<Variance> var) throws NotFoundException;
}
