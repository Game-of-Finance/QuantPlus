package com.wgh.dao.stub;

import com.wgh.dao.service.DiaryDao;
import com.wgh.model.Diary;

import java.util.List;

/**
 * Created by kylin on 16/8/9.
 * All rights reserved.
 */
public class DiaryStub implements DiaryDao{
    public List<Diary> queryDiary(String sql) {
        return null;
    }

    public int delDiary(int id) {
        return 0;
    }

    public int saveDiary(Diary diary) {
        return 0;
    }
}
