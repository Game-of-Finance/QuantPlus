package bl.tool.barchart;


import model.barchart.MixSingleVolumeVO;
import model.barchart.SingleVolumeVO;
import util.enums.PeriodEnum;
import util.exception.BadInputException;
import util.exception.NotFoundException;

/**
 * Created by JiachenWang on 2016/4/10.
 */
public class BarChartImpl implements BarChartService {
    @Override
    public SingleVolumeVO getSingleVolumeVO(String name, String number, PeriodEnum period, String start, String end)
            throws NotFoundException, BadInputException {
        SingleStrategy strategy;
        switch (period) {
            case DAY:
                strategy = new DayStrategy();
                break;
            case FIVEDAY:
                strategy = new FIVEDAYStrategy();
                break;
            case THREEDAY:
                strategy = new THREEDAYStrategy();
                break;
            case WEEK:
                strategy = new WEEKStrategy();
                break;
            case MONTH:
                strategy = new MONTHStrategy();
                break;
            default:
                strategy = new DayStrategy();
        }
        return strategy.calVolumn(name, number, start, end);
    }

    @Override
    public MixSingleVolumeVO getMixSingleVolumeVO(String name, String number, PeriodEnum period, String start, String end) throws NotFoundException, BadInputException {
        MixStrategy strategy;
        switch (period) {
            case DAY:
                strategy = new DayMStrategy();
                break;
            default:
                strategy = new DayMStrategy();
        }
        return strategy.calVolumn(name, number, start, end);
    }
}
