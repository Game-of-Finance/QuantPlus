package data.api;

import org.junit.Test;

/**
 * Created by JiachenWang on 2016/5/31.
 */
public class APIDataServiceUrlImplJsonTest {
    APIDataServiceUrlImplJson serviceUrlImplJson = new APIDataServiceUrlImplJson();

    @Test
    public void getStockJson() throws Exception {
        String ss = serviceUrlImplJson.getStockJson("sh600015","2015-01-01","2016-05-03","open");
        System.out.println(ss);
    }

}