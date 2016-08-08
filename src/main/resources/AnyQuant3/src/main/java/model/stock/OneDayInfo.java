package model.stock;

import java.util.HashMap;

/**
 * Created by kylin on 16/5/26.
 * All rights reserved.
 */
public class OneDayInfo extends StockAttribute{

    private String name;

    public OneDayInfo(String date, HashMap<String, String> att, String name) {
        super(date, att);
        this.name = name;
    }

    public String getName() {
        return name;
    }
}
