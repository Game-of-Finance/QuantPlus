package dao.tool;

import dao.entity.BenchmarkAttribute;

import java.util.HashMap;

/**
 * Created by JiachenWang on 2016/5/13.
 */
public class BenchmarkHelper {

    public static void setInfo(BenchmarkAttribute attr, String field, String value) {
        //TODO
        //ugly code
        switch (field) {
            case "open":
                attr.setOpen(value);
                break;
            case "high":
                attr.setHigh(value);
                break;
            case "low":
                attr.setLow(value);
                break;
            case "close":
                attr.setClose(value);
                break;
            case "volume":
                attr.setVolume(value);
                break;
            case "price_change":
                attr.setPrice_change(value);
                break;
            default:
                break;
        }
    }

    public static HashMap<String, String> getAttribute(BenchmarkAttribute attr) {
        HashMap<String, String> map = new HashMap<String, String>();
        if (attr.getOpen() != null)
            map.put("open", attr.getOpen());
        if (attr.getHigh() != null)
            map.put("high", attr.getHigh());
        if (attr.getLow() != null)
            map.put("low", attr.getLow());
        if (attr.getClose() != null)
            map.put("close", attr.getClose());
        if (attr.getVolume() != null)
            map.put("volume", attr.getVolume());
        if (attr.getPrice_change() != null)
            map.put("price_change", attr.getPrice_change());

        return map;
    }

}
