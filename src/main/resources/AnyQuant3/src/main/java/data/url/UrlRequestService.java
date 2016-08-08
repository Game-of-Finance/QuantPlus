package data.url;

import java.io.IOException;

/**
 * Created by kylin on 16/3/3.
 */
public interface UrlRequestService {

    /**
     * 根据AnyQuant url请求地址与具有权限的openCode获取网站股票信息
     *
     * @param strUrl   符合根据AnyQuant API的url请求地址
     * @param openCode 具有权限的openCode
     * @return 请求结果json数据字符串
     */
    String getString(String strUrl, String openCode) throws IOException;

    String getSring(String strUrl) throws IOException;
}
