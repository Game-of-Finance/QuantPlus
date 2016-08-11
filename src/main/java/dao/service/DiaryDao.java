package dao.service;

import model.Diary;

import java.util.List;

/**
 * Created by kylin on 16/8/9.
 * All rights reserved.
 */
public interface DiaryDao {

    /**
     * 查询日记(搜索)
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
     * 功能：保存日记到数据库(发帖)
     *
     * @param diary
     * @return
     */
    int saveDiary(Diary diary);

    /**
     * 功能：点赞
     *
     * @param diaryId,userId
     * @return
     */
    int like(int diaryId,int userId);

}
