package bl.impl;

import bl.service.InfoMineService;
import data.dataservice.InfoMineDataService;
import data.factory.DataFactory;
import model.stock.InfoMine;
import model.stock.InfoMineLine;
import po.InfoMineLinePO;
import po.InfoMinePO;
import util.exception.NotFoundException;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Created by kylin on 16/6/1.
 * All rights reserved.
 */
public class InfoMineImpl implements InfoMineService {

    private InfoMineDataService dataService;

    public InfoMineImpl() {
        dataService = DataFactory.getInstance().getInfoMineDataService();
    }

    @Override
    public InfoMine getInfoMine(String number) throws NotFoundException {
        List<InfoMineLine> infos = new ArrayList<>();
        InfoMinePO infoMinePO = dataService.getStockInfoMine(number);
        String stock_num = infoMinePO.getStock_num();
        List<InfoMineLinePO> infomine = infoMinePO.getInfomine();
        infos.addAll(infomine.stream().map(infoMineLinePO -> new InfoMineLine(infoMineLinePO.getDate(),
                infoMineLinePO.getTitle(), infoMineLinePO.getUrl())).collect(Collectors.toList()));
        return new InfoMine(stock_num, infos);
    }
}
