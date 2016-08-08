package dao.service;

import dao.entity.IndustryAttribute;
import util.exception.NotFoundException;

/**
 * Created by JiachenWang on 2016/6/6.
 */
public interface IndustryService {

    /**
     * 获得行业季度信息
     * @param industryName 行业名称
     * @param time 季度
     * @return
     * @throws NotFoundException
     */
    public IndustryAttribute getIndustryInfo(String industryName, String time) throws NotFoundException;

    /**
     * 存储行业季度信息
     * @param attr 行业信息持久化数据
     * @throws NotFoundException
     */
    public void setIndustryInfo(IndustryAttribute attr) throws NotFoundException;
}
