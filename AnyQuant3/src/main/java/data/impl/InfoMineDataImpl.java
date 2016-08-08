package data.impl;

import dao.entity.InfoMineDao;
import dao.factory.DaoFactory;
import dao.service.InfoMineService;
import data.dataservice.InfoMineDataService;
import po.InfoMineLinePO;
import po.InfoMinePO;
import util.exception.NotFoundException;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by kylin on 16/6/1.
 * All rights reserved.
 */
public class InfoMineDataImpl implements InfoMineDataService {

    @Override
    public InfoMinePO getStockInfoMine(String number) throws NotFoundException {
        InfoMineService reader = DaoFactory.getInstance().getInfoMineService();
        List<InfoMineDao> dao_list = reader.getStockInfoMine(number);
        ArrayList<InfoMineLinePO> list = new ArrayList<InfoMineLinePO>();
        for (InfoMineDao info : dao_list) {
            InfoMineLinePO line = new InfoMineLinePO(info.getTitle(), info.getType(), info.getDate(), info.getUrl());
            list.add(line);
        }
        return new InfoMinePO(number, list);
    }
}
