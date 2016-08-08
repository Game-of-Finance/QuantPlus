package bl.tool.barchart;

import bl.factory.BLFactory;
import bl.service.StockService;
import model.barchart.MixSingleVolumeVO;
import model.barchart.VolumeChartVO;
import model.stock.StockAttribute;
import model.stock.StockVO;
import util.math.CalHelper;
import util.enums.PeriodEnum;
import util.enums.TypeOfVolumn;
import util.exception.BadInputException;
import util.exception.NotFoundException;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by kylin on 16/5/19.
 */

class DayMStrategy implements MixStrategy {
    public MixSingleVolumeVO calVolumn(String name, String number, String start, String end) throws NotFoundException, BadInputException {

        StockService stockViewService = BLFactory.getInstance().getStockService();
        ArrayList<VolumeChartVO> list = new ArrayList<VolumeChartVO>();

        StockVO stock = stockViewService.getStock(number, start, end, field, new ArrayList<>());
        List<StockAttribute> attributes = stock.getAttributes();
        for (StockAttribute attribute : attributes) {
            boolean isRise = CalHelper.isRise(Double.parseDouble(attribute.getAttribute(startPrice)), Double.parseDouble(attribute.getAttribute(endPrice)));
            double sum =   Double.parseDouble(attribute.getAttribute(volume)) * (Double.parseDouble(attribute.getAttribute(startPrice))+Double.parseDouble(attribute.getAttribute(endPrice)))/2;
            VolumeChartVO vo = new VolumeChartVO(PeriodEnum.DAY, attribute.getDate().substring(5), (int) Double.parseDouble(attribute.getAttribute(volume))/1000, isRise, sum/10000);
            list.add(vo);
        }
        MixSingleVolumeVO mvo = new MixSingleVolumeVO(list, TypeOfVolumn.MIX, name, number);
        mvo.setLabelInfo("成交量&成交金额对比图", "时间", "千手&万元");
        return mvo;
    }
}
