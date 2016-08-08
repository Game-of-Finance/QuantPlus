package util.json;

import data.api.APIDataServiceUrlImplJson;
import org.junit.Test;
import util.constant.StockConstant;

import java.io.IOException;
import java.util.List;

/**
 * Created by kylin on 16/5/19.
 */
public class JsonReaderTest {

    private JsonReader jsonReader = new JsonReader(StockConstant.AllFields);

    @Test
    public void test() throws IOException {
        APIDataServiceUrlImplJson t = new APIDataServiceUrlImplJson();
        JsonReader jsonReader = new JsonReader(StockConstant.AllFields);
        System.out.println(t.getAllBenchmarkJson());
        List<String> list = jsonReader.readAllStockNames(t.getAllBenchmarkJson());
        System.out.println(list.size());
        System.out.println(list.get(0));
    }

    @Test
    public void readAllStockNames() throws Exception {
        String input = "{\"status\": \"ok\", \"data\": [{\"link\": \"http://121.41.106.89:8010/api/stock/sh600192\", \"name\": \"sh600192\"}, {\"link\": \"http://121.41.106.89:8010/api/stock/sh600486\", \"name\": \"sh600486\"}, {\"link\": \"http://121.41.106.89:8010/api/stock/sh600699\", \"name\": \"sh600699\"}]}";
        jsonReader.readAllStockNames(input);
    }

    @Test
    public void readAllFields() throws Exception {
        String input = "{\"status\": \"ok\", \"data\": [\"open\", \"high\", \"low\", \"close\", \"adj_price\", \"volume\", \"turnover\", \"pe_ttm\", \"pb\"]}";
        jsonReader.readAllFields(input);
    }

    @Test
    public void readAllFieldsToString() throws Exception {
        String input = "{\"status\": \"ok\", \"data\": [\"open\", \"high\", \"low\", \"close\", \"adj_price\", \"volume\", \"turnover\", \"pe_ttm\", \"pb\"]}";
        jsonReader.readAllFieldsToString(input);
    }

    @Test
    public void readStock() throws Exception {
        String input = "{\"status\": \"ok\", \"data\": {\"trading_info\": [{\"volume\": 0, \"high\": 8.5, \"pb\": 0.0, \"pe_ttm\": 0.0, \"adj_price\": 7.62, \"low\": 8.18, \"date\": \"2006-01-02\", \"close\": 8.32, \"open\": 8.46, \"turnover\": 0.0}, {\"volume\": 8431400, \"high\": 30.47, \"pb\": 2.42, \"pe_ttm\": 23.82, \"adj_price\": 30.43, \"low\": 29.5, \"date\": \"2016-05-12\", \"close\": 30.43, \"open\": 30.14, \"turnover\": 1.21}], \"name\": \"sh600600\"}}";
        jsonReader.readStock(input);
    }

}