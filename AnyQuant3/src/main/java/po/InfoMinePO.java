package po;

import java.util.ArrayList;

/**
 * Created by kylin on 16/6/1.
 * All rights reserved.
 */
public class InfoMinePO {

    private String stock_num;
    private ArrayList<InfoMineLinePO> infomine;

    public InfoMinePO(String stock_num, ArrayList<InfoMineLinePO> infomine) {
        this.stock_num = stock_num;
        this.infomine = infomine;
    }

    public String getStock_num() {
        return stock_num;
    }

    public ArrayList<InfoMineLinePO> getInfomine() {
        return infomine;
    }

}
