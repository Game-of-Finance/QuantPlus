package com.wgh.dao.service;

import com.wgh.model.Diary;

import java.util.List;

/**
 * Created by kylin on 16/8/9.
 * All rights reserved.
 */
public interface DiaryDao {

    /**
     * 查询日记
     *
     * @param sql
     * @return
     */
        List<Diary> queryDiary(String sql);

    /**
     * 删除指定日记
     *
     * @param id
     * @return
     */
    int delDiary(int id);


    /**
     * 功能：保存九宫格日记到数据库
     *
     * @param diary
     * @return
     */
    int saveDiary(Diary diary);

}
