package bl.tool.barchart;


import model.barchart.MixSingleVolumeVO;
import util.exception.BadInputException;
import util.exception.NotFoundException;

/**
 * Created by JiachenWang on 2016/4/5.
 */
interface MixStrategy {
    String field = "volume+open+close";
    String volume = "volume";
    String startPrice =  "open";
    String endPrice =  "close";


    public MixSingleVolumeVO calVolumn(String name, String number, String start, String end) throws NotFoundException, BadInputException;
}

