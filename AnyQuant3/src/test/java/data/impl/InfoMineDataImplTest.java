package data.impl;

import org.junit.Test;
import po.InfoMineLinePO;
import po.InfoMinePO;

/**
 * Created by JiachenWang on 2016/6/1.
 */
public class InfoMineDataImplTest {

    @Test
    public void getStockInfoMine() throws Exception {
        InfoMineDataImpl data = new InfoMineDataImpl();
        InfoMinePO po = data.getStockInfoMine("sh600600");
        for (InfoMineLinePO line : po.getInfomine()) {
            System.out.println("------------------------");
            System.out.println(line.getDate());
            System.out.println(line.getTitle());
            System.out.println(line.getType());
            System.out.println(line.getUrl());
            System.out.println("------------------------");
        }
    }

}