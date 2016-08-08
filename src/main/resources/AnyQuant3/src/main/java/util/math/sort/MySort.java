package util.math.sort;

import java.util.*;

/**
 * Created by kylin on 16/4/13.
 */
public class MySort {

    /**
     * 根据HashMap的主键排序
     *
     * @param hash
     * @return
     */
    public static List<MyHashItem> sortHashmapByKey(Map<String, Double> hash){
        List<MyHashItem> items = new ArrayList<>();

        //将map.entrySet()转换成list
        List<Map.Entry<String, Double>> list = new ArrayList<>(hash.entrySet());
        Collections.sort(list, (Map.Entry<String,Double> o1, Map.Entry<String,Double> o2)
                -> o1.getKey().compareTo(o2.getKey()));

        //添加每一个数据
        for (Map.Entry<String, Double> mapping : list) {
            String key = mapping.getKey();
            MyHashItem<String,Double> item  = new MyHashItem<>(key,hash.get(key));
            items.add(item);
        }

        return items;
    }

    public static double getMax(Map<String, Double> hash){
        double max = -10000;
        for(String key:hash.keySet()){
            if(hash.get(key) > max)
                max = hash.get(key);
        }
        return max;
    }

    public static double getMin(Map<String, Double> hash){
        double min = 10000;
        for(String key:hash.keySet()){
            if(hash.get(key) < min)
                min = hash.get(key);
        }
        return min;
    }
}
