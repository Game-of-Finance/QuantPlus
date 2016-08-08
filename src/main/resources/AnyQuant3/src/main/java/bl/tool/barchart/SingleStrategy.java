package bl.tool.barchart;


import model.barchart.SingleVolumeVO;
import util.exception.BadInputException;
import util.exception.NotFoundException;

/**
 * Created by JiachenWang on 2016/4/1.
 */
interface SingleStrategy {
    String field = "volume+open+close";
    String volume = "volume";
    String startPrice = "open";
    String endPrice = "close";

    SingleVolumeVO calVolumn(String name, String number, String start, String end)
            throws NotFoundException, BadInputException;
}
