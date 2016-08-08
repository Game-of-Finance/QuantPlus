package util.json;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import po.StockPO;
import util.constant.StockConstant;
import util.exception.BadInputException;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * Created by kylin on 16/3/3.
 */
public class JsonReader {

    private String allFieldsName;

    public JsonReader(String nowFields) {
        allFieldsName = nowFields;
    }

    /**
     * 从json字符串中读取所有的股票名称
     *
     * @return 所有的股票名称列表
     */
    public List<String> readAllStockNames(String josnStocks) {

        List<String> allStocks = new ArrayList<String>();
        JSONObject jsonObject = new JSONObject(josnStocks);
        //判断访问结果
        if (!this.isStatusOK(jsonObject))
            return allStocks;

        JSONArray data = jsonObject.getJSONArray("data");

        String name = "";
        for (int i = 0; i < data.length(); i++) {
            JSONObject aStock = data.getJSONObject(i);
            name = aStock.getString("name");
            allStocks.add(name);
        }
        return allStocks;
    }

    /**
     * 从json字符串中读取股票所有可用的交易数据字段
     *
     * @param jsonFields 包含交易数据字段的json字符串
     * @return 股票所有可用的交易数据字段列表
     */
    public List<String> readAllFields(String jsonFields) {

        List<String> allFields = new ArrayList<String>();
        JSONObject jsonObject = new JSONObject(jsonFields);

        //判断访问结果
        if (!this.isStatusOK(jsonObject))
            return allFields;

        JSONArray data = jsonObject.getJSONArray("data");

        String field = "";
        for (int i = 0; i < data.length(); i++) {
            field = data.getString(i);
            allFields.add(field);
        }
        return allFields;

    }

    /**
     * 从json字符串中读取股票所有可用的交易数据字段
     *
     * @param jsonFields 包含交易数据字段的json字符串
     * @return 股票所有可用的交易数据字段列表
     */
    public String readAllFieldsToString(String jsonFields) {

        String allFields = "";
        JSONObject jsonObject = new JSONObject(jsonFields);

        JSONArray data = jsonObject.getJSONArray("data");

        String field = "";
        for (int i = 0; i < data.length() - 1; i++) {
            field = data.getString(i);
            allFields += (field + "+");
        }
        allFields += data.getString(data.length() - 1);
        return allFields;

    }

    /**
     * 从json字符串中读取一只股票的信息
     * <p>
     * 只有这个方法使用allFieldsName
     *
     * @param stockJson 一只股票的json字符串
     * @return StockPO
     */
    public StockPO readStock(String stockJson) throws BadInputException {
//        try {
            JSONObject jsonObject = new JSONObject(stockJson);
            StockPO po = null;
            //判断访问结果
            if (!this.isStatusOK(jsonObject))
                return po;

            JSONObject stockData = jsonObject.getJSONObject("data");
            //stockData包含一个tradingInfo数组与一个name 属性
            JSONArray tradingInfo = stockData.getJSONArray("trading_info");
            String name = stockData.getString("name");

            HashMap<String, HashMap<String, String>> aStock = new HashMap<>();
            //对于所有的天数
            for (int i = 0; i < tradingInfo.length(); i++) {

                //读取每一天的数据
                JSONObject aDay = tradingInfo.getJSONObject(i);
                String date = aDay.getString("date");
                HashMap<String, String> oneDayInfo = new HashMap<>();

                //获取所有的属性
                String[] fields = this.allFieldsName.split("\\+");

                //TODO ugly code
                if(name.equals("hs300")){
                    String fields1 = null;
                    fields1 = StockConstant.BenchFields;
                    fields = fields1.split("\\+");
                }

                for (String fieldName : fields) {
                    String attribute = "";
                    try {
                        attribute = Double.toString(aDay.getDouble(fieldName));
                    }catch (JSONException exception){
                        attribute = aDay.getString(fieldName);
                    }

                    oneDayInfo.put(fieldName, attribute);
                }
                aStock.put(date, oneDayInfo);
            }

            po = new StockPO(name, aStock);

            return po;
//        }catch (JSONException e){
//            throw new BadInputException("json文件不符合格式,请检查缓存数据");
//        }

    }

    /**
     * 判断从API中读取的最基本jsonObject的状态
     *
     * @param jsonObject 初始的jsonObject
     * @return jsonObject的状态(status是否为ok)
     */
    private boolean isStatusOK(JSONObject jsonObject) {
        String status = jsonObject.getString("status");
        return status.equals("ok");
    }

    public static String getNumber(String jsonNumber){
        JSONObject jsonObject = new JSONObject(jsonNumber);
        return jsonObject.getString("number");
    }
}
