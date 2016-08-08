package util.json;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import model.barchart.VolumeChartVO;
import model.barchart.VolumeVO;
import model.common.LinearChartVO;
import model.common.MyChartSeries;
import model.common.PieChartVO;
import model.stock.StockAttribute;
import model.stock.StockVO;
import org.json.JSONArray;
import util.enums.LinearChartType;
import util.enums.TypeOfVolumn;

import java.util.*;

/**
 * Created by kylin on 16/5/14.
 */
public class JsonConverter {

    public static String jsonOfObject(Object object) throws JsonProcessingException {
        ObjectMapper mapper = new ObjectMapper();
        return mapper.writeValueAsString(object);
    }

    public static List<String> jsonOfLinearChartVO(LinearChartVO linearChartVO) throws JsonProcessingException {
        List<String> result = new ArrayList<>();
        List<MyChartSeries> chartSeries = linearChartVO.getChartSeries();

        //对于数据包中的每一个数据列
        for (MyChartSeries myChartSeries : chartSeries) {
            JSONArray oneList = new JSONArray();

            Map<String, Double> xyItems = myChartSeries.getXyItem();

            List<Map.Entry<String, Double>> list = new ArrayList<>(xyItems.entrySet());
            Collections.sort(list, (Map.Entry<String, Double> o1, Map.Entry<String, Double> o2)
                    -> o1.getKey().compareTo(o2.getKey()));

            //添加每一个数据
            for (Map.Entry<String, Double> mapping : list) {
                JSONArray oneDay = new JSONArray();
                if (linearChartVO.getChartType().equals(LinearChartType.STOCK))
                    oneDay.put(mapping.getKey());
                else
                    oneDay.put(mapping.getKey().substring(5));

                oneDay.put(mapping.getValue());
                //将每一个数据加到这个数据列中
                oneList.put(oneDay);
            }
            String oneJsonList = JsonConverter.jsonOfObject(oneList);
            result.add(oneJsonList);
        }

        return result;
    }

    public static String jsonOfVolumeVO(VolumeVO volumeVO) throws JsonProcessingException {
        ArrayList<VolumeChartVO> volumeChartVOs = volumeVO.getList();
        JSONArray oneList = new JSONArray();

        //对于每一天的成交量数据
        for (VolumeChartVO volumeChartVO:volumeChartVOs){
            JSONArray oneDay = new JSONArray();
            String date = volumeChartVO.getTime();
            double value = volumeChartVO.getVolumn();
            oneDay.put(date);
            oneDay.put(value);

            //如果是混和型的柱状图,再添加一个数据
            if(volumeVO.getType() == TypeOfVolumn.MIX){
                oneDay.put(volumeChartVO.getSumPrice());
            }

            //添加这一天的数据到结果中
            oneList.put(oneDay);
        }
        return JsonConverter.jsonOfObject(oneList);
    }

    public static String jsonKlinearOfVO(StockVO stockVO) throws JsonProcessingException {
        List<StockAttribute> attributes = stockVO.getAttributes();

        //多天的数据 <一天的4个属性>
        List<List<String>> result = new ArrayList<>();

        for (StockAttribute attribute : attributes) {
            HashMap<String, String> oneDay = attribute.getAttribute();
            String open = oneDay.get("open");
            String close = oneDay.get("close");
            String low = oneDay.get("low");
            String high = oneDay.get("high");

            //一天的数据
            List<String> dayLine = new ArrayList<>();
            String day = attribute.getDate();

            dayLine.add(day);
            dayLine.add(open);
            dayLine.add(close);
            dayLine.add(low);
            dayLine.add(high);

            //将这一天加入结果
            result.add(dayLine);
        }
        return JsonConverter.jsonOfObject(result);
    }

    public static List<String> convertPieVO(PieChartVO pieChartVO) throws JsonProcessingException {
        List<String> result = new ArrayList<>();
        //每个项的名字及原始数值
        Map<String, Double>  data = pieChartVO.getOriginMap();
        Set<Map.Entry<String, Double>> entrySet =  data.entrySet();

        JSONArray nameList = new JSONArray();
        JSONArray dataList = new JSONArray();

        for (Map.Entry<String, Double> entry:entrySet){
            nameList.put(entry.getKey());
            dataList.put(Double.toString(entry.getValue()));
        }

        result.add(JsonConverter.jsonOfObject(nameList));
        result.add(JsonConverter.jsonOfObject(dataList));

        return result;
    }

}
