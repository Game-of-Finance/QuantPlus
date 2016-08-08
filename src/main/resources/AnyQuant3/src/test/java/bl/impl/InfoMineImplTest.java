package bl.impl;

import model.stock.InfoMine;
import model.stock.InfoMineLine;
import org.junit.Test;

import java.util.List;

/**
 * Created by kylin on 16/6/7.
 * All rights reserved.
 */
public class InfoMineImplTest {

    InfoMineImpl info = new InfoMineImpl();

    @Test
    public void getInfoMine() throws Exception {
        InfoMine infoMine = info.getInfoMine("sh600600");
        List<InfoMineLine> infos = infoMine.getInfos();
        for (InfoMineLine line:infos){
            System.out.println(line.getDate());
            System.out.println(line.getTitle());
            System.out.println(line.getStringUrl());
        }
        info.getInfoMine("sh600519");
    }

}