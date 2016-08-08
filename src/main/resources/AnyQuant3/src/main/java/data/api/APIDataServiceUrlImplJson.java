package data.api;

import data.url.UrlRequestHttpClient;
import data.url.UrlRequestService;

import java.io.IOException;

/**
 * Created by kylin on 16/3/8.
 */
public class APIDataServiceUrlImplJson implements APIDataServiceJson {

    protected final String webUrl = "http://121.41.106.89:8010/";

    protected final String openCode = "1e03eba17d98bfbfcc6f9c9994199f89";

    protected UrlRequestService urlRequest;

    public APIDataServiceUrlImplJson() {
        urlRequest = new UrlRequestHttpClient();
    }

    public String getAllStockJson(String year, String exchange) throws IOException {
        String allStocks = webUrl + "api/stocks/?" +
                "year=" + year + "&exchange=" + exchange;
        return urlRequest.getString(allStocks, openCode);
    }

    public String getStockJson(String name, String start, String end, String fields) throws IOException {
        String aStock = webUrl + "api/stock/" + name + "/?" +
                "start=" + start + "&end=" + end + "&fields=" + fields;
        return urlRequest.getString(aStock, openCode);
    }

    public String getAllBenchmarkJson() throws IOException {
        String benchmarkUrl = webUrl + "api/benchmark/all";
        return urlRequest.getString(benchmarkUrl, openCode);
    }

    public String getBenchmarkJson(String bench, String start, String end, String fields) throws IOException {
        String someBenchmarkUrl = webUrl + "api/benchmark/" + bench + "?" +
                "start=" + start + "&end=" + end + "&fields=" + fields;
        return urlRequest.getString(someBenchmarkUrl, openCode);
    }

    public String getAllFieldsJson() throws IOException {
        String stockFields = webUrl + "api/stock/fields";
        return urlRequest.getString(stockFields, openCode);
    }


}

