package model.analyse;

import util.exception.BadInputException;
import util.time.DateCount;

import java.util.Map;

/**
 * Created by kylin on 16/5/24.
 * All rights reserved.
 */
public class ARBResult {
    Map<String, Double> ar;
    Map<String, Double> br;

    String start_date;
    String end_date;

    public ARBResult(Map<String, Double> ar, Map<String, Double> br) {
        this.ar = ar;
        this.br = br;
        try {
            start_date = DateCount.getMinDate(ar.keySet());
            end_date = DateCount.getMaxDate(ar.keySet());
        } catch (BadInputException e) {
            e.printStackTrace();
        }
    }

    public Map<String, Double> getAr() {
        return ar;
    }

    public Map<String, Double> getBr() {
        return br;
    }

}
