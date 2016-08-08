package bl.tool.piechart;


import data.dataservice.AnalysisDataService;
import data.factory.DataFactory;
import model.common.PieChartVO;
import util.exception.NotFoundException;

/**
 * Created by JiachenWang on 2016/4/10.
 */

public class PieChartImpl implements PieChartService {

    private AnalysisDataService analysisDataService;

    public PieChartImpl() {
        analysisDataService = DataFactory.getInstance().getAnalysisDataService();
    }

    @Override
    public PieChartVO getPieVolumeVO(String name, String number, String start, String end) throws NotFoundException {
        return new PieChartVO("交易量(单位:手)", analysisDataService.getVolumeInfo(number, start, end));
    }

    @Override
    public PieChartVO getPieAmountVO(String name, String number, String start, String end) throws NotFoundException {
        return new PieChartVO("交易金额(单位:百万)", analysisDataService.getAmountInfo(number, start, end));
    }

}
