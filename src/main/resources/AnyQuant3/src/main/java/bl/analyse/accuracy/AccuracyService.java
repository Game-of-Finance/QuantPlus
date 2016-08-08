package bl.analyse.accuracy;

import util.exception.BadInputException;
import util.exception.NotFoundException;

/**
 * Created by kylin on 16/6/13.
 * All rights reserved.
 */
public interface AccuracyService {

    double analyseMACD(String stock_num) throws BadInputException, NotFoundException;

    double analyseArbr(String stock_num) throws BadInputException, NotFoundException;

    double analyseRSI(String number) throws NotFoundException, BadInputException;

    double analyseArima(String stock_num, double threshold) throws BadInputException, NotFoundException;
}
