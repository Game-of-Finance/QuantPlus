package dao.stub;

import dao.service.DiaryDao;
import model.Diary;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by kylin on 16/8/9.
 * All rights reserved.
 */
public class DiaryStub implements DiaryDao{

    public List<Diary> queryDiary(String sql) {
        return new ArrayList<Diary>(){
            {
                Diary diary = new Diary();
                diary.setAddress("addr");
                diary.setId(1);
                diary.setTitle("title");
                diary.setUserid(22);
                diary.setWriteTime(new Date());
                diary.setUsername("username");
                add(diary);

                diary = new Diary();
                diary.setAddress("addr");
                diary.setId(2);
                diary.setTitle("title");
                diary.setUserid(22);
                diary.setWriteTime(new Date());
                diary.setUsername("username");
                add(diary);

                diary = new Diary();
                diary.setAddress("addr");
                diary.setId(3);
                diary.setTitle("title");
                diary.setUserid(22);
                diary.setWriteTime(new Date());
                diary.setUsername("username");
                add(diary);

                diary = new Diary();
                diary.setAddress("addr");
                diary.setId(4);
                diary.setTitle("title");
                diary.setUserid(22);
                diary.setWriteTime(new Date());
                diary.setUsername("username");
                add(diary);

                diary = new Diary();
                diary.setAddress("addr");
                diary.setId(5);
                diary.setTitle("title");
                diary.setUserid(22);
                diary.setWriteTime(new Date());
                diary.setUsername("username");
                add(diary);

                diary = new Diary();
                diary.setAddress("addr");
                diary.setId(6);
                diary.setTitle("title");
                diary.setUserid(22);
                diary.setWriteTime(new Date());
                diary.setUsername("username");
                add(diary);
            }
        };
    }

    public int delDiary(int id) {
        return 0;
    }

    public int saveDiary(Diary diary) {
        return 0;
    }

    public int like(int diaryId,int userId) {
        return 0;
    }
}
