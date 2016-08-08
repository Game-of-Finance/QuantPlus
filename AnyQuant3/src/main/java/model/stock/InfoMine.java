package model.stock;

import java.util.List;

/**
 * Created by kylin on 16/6/1.
 * All rights reserved.
 */
public class InfoMine {

    private String stockNumber;

    private List<InfoMineLine> infos;

    public InfoMine(String stockNumber, List<InfoMineLine> infos) {
        this.stockNumber = stockNumber;
        this.infos = infos;
    }

    public String getStockNumber() {
        return stockNumber;
    }

    public List<InfoMineLine> getInfos() {
        return infos;
    }
}
