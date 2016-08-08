package dao.tool;

import dao.entity.StockAttribute;

import java.util.HashMap;

/**
 * Created by JiachenWang on 2016/5/13.
 */
public class StockHelper {

    public static void setInfo(StockAttribute attr, String field, String value) {
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
            case "adj_price":
                attr.setAdj_price(value);
                break;
            case "volume":
                attr.setVolume(value);
                break;
            case "turnover":
                attr.setTurnover(value);
                break;
            case "pe_ttm":
                attr.setPe_ttm(value);
                break;
            case "pb":
                attr.setPb(value);
                break;
            default:
                break;
        }
    }

    public static HashMap<String, String> getAttribute(StockAttribute attr) {
        HashMap<String, String> map = new HashMap<String, String>();
        if (attr.getOpen() != null)
            map.put("open", attr.getOpen());
        if (attr.getHigh() != null)
            map.put("high", attr.getHigh());
        if (attr.getLow() != null)
            map.put("low", attr.getLow());
        if (attr.getClose() != null)
            map.put("close", attr.getClose());
        if (attr.getAdj_price() != null)
            map.put("adj_price", attr.getAdj_price());
        if (attr.getVolume() != null)
            map.put("volume", attr.getVolume());
        if (attr.getTurnover() != null)
            map.put("turnover", attr.getTurnover());
        if (attr.getPe_ttm() != null)
            map.put("pe_ttm", attr.getPe_ttm());
        if (attr.getPb() != null)
            map.put("pb", attr.getPb());

        return map;
    }

}
