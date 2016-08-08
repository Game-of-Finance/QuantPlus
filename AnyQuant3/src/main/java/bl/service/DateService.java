package bl.service;

/**
 * Created by kylin on 16/6/16.
 * All rights reserved.
 */
public interface DateService {

    /**
     * 得到有分时数据的最近工作日日期
     *
     * @return
     */
    String getLatestDate();
}
