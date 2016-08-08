package data.impl.stub;

import data.dataservice.StockDataService;
import model.stock.OneDayInfo;
import po.StockPO;
import util.exception.NotFoundException;
import util.time.DateCount;

import java.text.DecimalFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

/**
 * Created by JiachenWang on 2016/5/16.
 */
public class StockDataStub implements StockDataService {

    @Override
    public HashMap<String, String> getStockNameAndNumber() {
        HashMap<String,String> oneIndx = new HashMap<>();

        oneIndx.put("光大银行","sh601818");
        oneIndx.put("华夏银行","sh600015");
        oneIndx.put("招商银行","sh600036");
        oneIndx.put("交通银行","sh601328");
        oneIndx.put("农业银行","sh601288");
        oneIndx.put("平安银行","sz000001");
        oneIndx.put("宁波银行","sz002142");

        oneIndx.put("贵州茅台","sh600519");
        oneIndx.put("山西汾酒","sh600809");
        oneIndx.put("五粮液","sz000858");
        oneIndx.put("古井贡酒","sz000596");
        oneIndx.put("水井坊","sh600779");
        oneIndx.put("青岛啤酒","sh600600");
        oneIndx.put("泸州老窖","sz000568");

        oneIndx.put("银星能源","sz000862");
        oneIndx.put("金风科技","sz002202");
        oneIndx.put("东方电气","sh600875");
        oneIndx.put("中核科技","sz000777");
        oneIndx.put("航天机电","sh600151");

        oneIndx.put("上海能源","sh600508");
        oneIndx.put("盘江股份","sh600395");
        oneIndx.put("靖远煤电","sz000552");
        oneIndx.put("远兴能源","sz000683");
        oneIndx.put("平庄能源","sz000780");
        oneIndx.put("陕西煤业","sh601225");

        return oneIndx;
    }

    @Override
    public String getNameByID(String number) {
        return null;
    }

    @Override
    public List<String> getIDLikeName(String name) {
        return null;
    }


    @Override
    public HashMap<String, HashMap<String, String>> getNamesAndNames() {
        HashMap<String,HashMap<String,String>> result = new HashMap<>();

        HashMap<String,String> oneIndx = new HashMap<>();

        oneIndx = new HashMap<>();
        oneIndx.put("光大银行","sh601818");
        oneIndx.put("华夏银行","sh600015");
        oneIndx.put("招商银行","sh600036");
        oneIndx.put("交通银行","sh601328");
        oneIndx.put("农业银行","sh601288");
        oneIndx.put("平安银行","sz000001");
        oneIndx.put("宁波银行","sz002142");
        result.put("银行业",oneIndx);

        oneIndx = new HashMap<>();
        oneIndx.put("贵州茅台","sh600519");
        oneIndx.put("山西汾酒","sh600809");
        oneIndx.put("五粮液","sz000858");
        oneIndx.put("古井贡酒","sz000596");
        oneIndx.put("水井坊","sh600779");
        oneIndx.put("青岛啤酒","sh600600");
        oneIndx.put("泸州老窖","sz000568");

        result.put("酒业",oneIndx);

        oneIndx = new HashMap<>();
        oneIndx.put("银星能源","sz000862");
        oneIndx.put("金风科技","sz002202");
        oneIndx.put("东方电气","sh600875");
        oneIndx.put("中核科技","sz000777");
        oneIndx.put("航天机电","sh600151");
        result.put("新能源",oneIndx);

        oneIndx = new HashMap<>();
        oneIndx.put("上海能源","sh600508");
        oneIndx.put("盘江股份","sh600395");
        oneIndx.put("靖远煤电","sz000552");
        oneIndx.put("远兴能源","sz000683");
        oneIndx.put("平庄能源","sz000780");
        oneIndx.put("陕西煤业","sh601225");
        result.put("煤炭",oneIndx);

        return result;
    }


    @Override
    public StockPO getStock(String num) throws NotFoundException {
        //返回青岛啤酒sh600600一个月数据
        HashMap<String,HashMap<String,String>> result = new HashMap<>();

        Date today = new Date();
        String endDay = DateCount.dateToStr(today);

        int size = 1000;

        for (int i = 1; i <= size; i++) {
            endDay = DateCount.count(endDay,-1);
            double price = Math.random() * 10;

            result.put(endDay,setStock(price));
        }

        StockPO po = new StockPO(num, result);
        po.setName("青岛啤酒"+num);
        return po;
    }

    private HashMap<String,String> setStock(double price){
        DecimalFormat df = new DecimalFormat("0.00");

        double var = Math.random() * 2;

        double open = price;
        double high = open+var;
        double low = open-var;
        double close = open + (Math.random()-0.5) * 4;

        HashMap<String,String> oneIndx = new HashMap<>();

        oneIndx.put("open",df.format(price));
        oneIndx.put("high",df.format(high));
        oneIndx.put("low",df.format(low));
        oneIndx.put("close",df.format(close));
        oneIndx.put("adj_price",df.format(Math.random()*2));
        oneIndx.put("volume",df.format(Math.random()*200000));
        oneIndx.put("turnover",df.format(Math.random()*5));
        oneIndx.put("pe_ttm",df.format(Math.random()*2));
        oneIndx.put("pb",df.format(Math.random()*3));

        return oneIndx;
    }

    private HashMap<String,String> setBench(String info){
        HashMap<String,String> oneIndx = new HashMap<>();

        oneIndx.put("open",info);
        oneIndx.put("high",info);
        oneIndx.put("low",info);
        oneIndx.put("close",info);
        oneIndx.put("adj_price",info);

        return oneIndx;
    }


//    @Override
//    public StockPO getBenchmark(String bench) throws NotFoundException {
//        Date today = new Date();
//        String strToday = DateCount.dateToStr(today);
//
//        int size = 1000;
//
//        HashMap<String, HashMap<String, String>> result = new HashMap<>();
//        for (int i = 1; i <= size; i++) {
//            strToday = DateCount.count(strToday,-1);
//            double price = Math.random() * 10;
//
//            result.put(strToday,setStock(price));
//        }
//
//        StockPO po = new StockPO("sh300", result);
//        po.setName("上证综指");
//        return po;
//    }



    @Override
    public List<OneDayInfo> getLatest() {
        return null;
    }


}
