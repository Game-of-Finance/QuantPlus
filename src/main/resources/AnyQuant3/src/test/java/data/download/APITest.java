package data.download;

import data.api.APIDataServiceUrlImplJson;
import org.junit.Test;

import java.io.IOException;

/**
 * Created by JiachenWang on 2016/5/13.
 */
public class APITest {

    @Test
    public void test() throws IOException {
        APIDataServiceUrlImplJson t = new APIDataServiceUrlImplJson();
        System.out.println(t.getAllBenchmarkJson());
    }

}
