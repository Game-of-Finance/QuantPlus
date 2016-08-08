package dao.impl;

import org.junit.Test;

import static org.junit.Assert.*;

/**
 * Created by JiachenWang on 2016/6/6.
 */
public class InfoMineReaderTest {
    @Test
    public void getStockInfoMine() throws Exception {
        InfoMineReader reader = new InfoMineReader();
        System.out.println(reader.getStockInfoMine("sh600600").size());
    }

}