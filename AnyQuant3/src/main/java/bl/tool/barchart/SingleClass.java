package bl.tool.barchart;

import bl.factory.BLFactory;
import bl.service.StockService;
import model.barchart.SingleVolumeVO;
import model.barchart.VolumeChartVO;
import model.stock.StockAttribute;
import model.stock.StockVO;
import util.math.CalHelper;
import util.enums.PeriodEnum;
import util.enums.TypeOfVolumn;
import util.exception.BadInputException;
import util.exception.NotFoundException;
import util.time.DateCount;
import util.time.TimeConvert;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

/**
 * Created by kylin on 16/5/19.
 */
class DayStrategy implements SingleStrategy {
    public SingleVolumeVO calVolumn(String name, String number, String start, String end) throws NotFoundException, BadInputException {

        ArrayList<VolumeChartVO> list = new ArrayList<VolumeChartVO>();

        StockService stockViewService = BLFactory.getInstance().getStockService();
        StockVO stock = stockViewService.getStock(number, start, end, field, new ArrayList<>());
        List<StockAttribute> attributes = stock.getAttributes();

        if (attributes.size() == 0) {
            SingleVolumeVO svo = new SingleVolumeVO(list, TypeOfVolumn.SINGLE, name, number);
            svo.setLabelInfo("日交易量统计图", "时间", "万手");
            return svo;
        }

        for (StockAttribute attribute : attributes) {
            boolean isRise = CalHelper.isRise(Double.parseDouble(attribute.getAttribute(startPrice)), Double.parseDouble(attribute.getAttribute(endPrice)));
            VolumeChartVO vo = new VolumeChartVO(PeriodEnum.DAY, attribute.getDate().substring(5), (int) (Double.parseDouble(attribute.getAttribute(volume))), isRise);
            list.add(vo);
        }
        SingleVolumeVO svo = new SingleVolumeVO(list, TypeOfVolumn.SINGLE, name, number);
        svo.setLabelInfo("日交易量统计图", "时间", "万手");
        return svo;
    }
}

class FIVEDAYStrategy implements SingleStrategy {
    public SingleVolumeVO calVolumn(String name, String number, String start, String end) throws NotFoundException, BadInputException {

        ArrayList<VolumeChartVO> list = new ArrayList<VolumeChartVO>();

        StockService stockViewService = BLFactory.getInstance().getStockService();
        StockVO stock = stockViewService.getStock(number, start, end, field, new ArrayList<>());
        List<StockAttribute> attributes = stock.getAttributes();

        for (int i = 0; i < attributes.size() / 5; i++) {
            double total = 0;
            for (int j = 0; j < 5; j++)
                total += Double.parseDouble(attributes.get(5 * i + j).getAttribute(volume));
            boolean isRise = CalHelper.isRise(Double.parseDouble(attributes.get(5 * i).getAttribute(startPrice)), Double.parseDouble(attributes.get(5 * i + 4).getAttribute(endPrice)));
            VolumeChartVO vo = new VolumeChartVO(PeriodEnum.FIVEDAY, attributes.get(5 * i).getDate().substring(5), (int) (total), isRise);
            list.add(vo);
        }
        if (attributes.size() % 5 == 0) {
            SingleVolumeVO svo = new SingleVolumeVO(list, TypeOfVolumn.SINGLE, name, number);
            svo.setLabelInfo("五天交易量统计图", "时间", "万手");
            return svo;
        }
        double total = 0;
        for (int i = (attributes.size() / 5) * 5; i < attributes.size(); i++) {
            total += Double.parseDouble(attributes.get(i).getAttribute(volume));
        }
        boolean isRise = CalHelper.isRise(Double.parseDouble(attributes.get((attributes.size() / 5) * 5).getAttribute(startPrice)), Double.parseDouble(attributes.get(attributes.size() - 1).getAttribute(endPrice)));
        VolumeChartVO vo = new VolumeChartVO(PeriodEnum.FIVEDAY, attributes.get((attributes.size() / 5) * 5).getDate().substring(5), (int) (total ), isRise);
        list.add(vo);

        SingleVolumeVO svo = new SingleVolumeVO(list, TypeOfVolumn.SINGLE, name, number);
        svo.setLabelInfo("五日交易量统计图", "时间", "万手");
        return svo;
    }
}

class THREEDAYStrategy implements SingleStrategy {
    public SingleVolumeVO calVolumn(String name, String number, String start, String end) throws NotFoundException, BadInputException {

        ArrayList<VolumeChartVO> list = new ArrayList<VolumeChartVO>();

        StockService stockViewService = BLFactory.getInstance().getStockService();
        StockVO stock = stockViewService.getStock(number, start, end, field, new ArrayList<>());
        List<StockAttribute> attributes = stock.getAttributes();

        for (int i = 0; i < attributes.size() / 3; i++) {
            double total = 0;
            for (int j = 0; j < 3; j++)
                total += Double.parseDouble(attributes.get(3 * i + j).getAttribute(volume));
            boolean isRise = CalHelper.isRise(Double.parseDouble(attributes.get(3 * i).getAttribute(startPrice)), Double.parseDouble(attributes.get(3 * i + 2).getAttribute(endPrice)));
            VolumeChartVO vo = new VolumeChartVO(PeriodEnum.THREEDAY, attributes.get(3 * i).getDate().substring(5), (int) (total), isRise);
            list.add(vo);
        }
        if (attributes.size() % 3 == 0) {
            SingleVolumeVO svo = new SingleVolumeVO(list, TypeOfVolumn.SINGLE, name, number);
            svo.setLabelInfo("三天交易量统计图", "时间", "万手");
            return svo;
        }
        double total = 0;
        for (int i = (attributes.size() / 3) * 3; i < attributes.size(); i++) {
            total += Double.parseDouble(attributes.get(i).getAttribute(volume));//0 1 2 3 4 5 6 7 8 9 10
        }
        System.out.println(((attributes.size() / 3) * 3) + "hhh" + attributes.size());
        boolean isRise = CalHelper.isRise(Double.parseDouble(attributes.get((attributes.size() / 3) * 3).getAttribute(startPrice)), Double.parseDouble(attributes.get(attributes.size() - 1).getAttribute(endPrice)));
        VolumeChartVO vo = new VolumeChartVO(PeriodEnum.THREEDAY, attributes.get((attributes.size() / 3) * 3).getDate().substring(5), (int) (total), isRise);
        list.add(vo);
        SingleVolumeVO svo = new SingleVolumeVO(list, TypeOfVolumn.SINGLE, name, number);
        svo.setLabelInfo("三天交易量统计图", "时间", "万手");
        return svo;
    }
}

class WEEKStrategy implements SingleStrategy {
    public SingleVolumeVO calVolumn(String name, String number, String start, String end) throws NotFoundException, BadInputException {

        ArrayList<VolumeChartVO> list = new ArrayList<VolumeChartVO>();

        start = DateCount.count(start, -(DateCount.getWeekOfDate(start) - 1));
        end = DateCount.count(end, 8 - DateCount.getWeekOfDate(end));

        do {
            StockService stockViewService = BLFactory.getInstance().getStockService();
            StockVO stock = stockViewService.getStock(number, start, DateCount.count(start, 6), field, new ArrayList<>());
            List<StockAttribute> attributes = stock.getAttributes();
            if (attributes.size() == 0) {
                VolumeChartVO vo = new VolumeChartVO(PeriodEnum.WEEK, start.substring(5), 0, true);
                list.add(vo);
                start = DateCount.count(start, 7);
                System.out.print(start);
                continue;
            }
            double total = 0;
            for (StockAttribute attribute : attributes) {
                total += Double.parseDouble(attribute.getAttribute(volume));
            }
            boolean isRise = CalHelper.isRise(Double.parseDouble(attributes.get(0).getAttribute(startPrice)), Double.parseDouble(attributes.get(attributes.size() - 1).getAttribute(endPrice)));
            VolumeChartVO vo = new VolumeChartVO(PeriodEnum.WEEK, start.substring(5), (int) (total), isRise);
            list.add(vo);
            start = DateCount.count(start, 7);
        } while (!start.equalsIgnoreCase(end));

        SingleVolumeVO svo = new SingleVolumeVO(list, TypeOfVolumn.SINGLE, name, number);
        svo.setLabelInfo("周交易量统计图", "时间", "万手");
        return svo;
    }
}

class MONTHStrategy implements SingleStrategy {
    public SingleVolumeVO calVolumn(String name, String number, String start, String end) throws NotFoundException, BadInputException {

        ArrayList<VolumeChartVO> list = new ArrayList<VolumeChartVO>();

        start = start.substring(0, 8) + "01";
        end = end.substring(0, 8) + "01";
        Calendar date_end = null;
        try {
            date_end = TimeConvert.covertToCalendar(end);
        } catch (ParseException e) {
            throw new NotFoundException("信息未能获取");
        }
        date_end.add(Calendar.MONTH, 1);
        end = TimeConvert.getDisplayDate(date_end);

        do {
            StockVO stock = null;
            try {
                StockService stockViewService = BLFactory.getInstance().getStockService();
                stock = stockViewService.getStock(number, start, DateCount.getLastDayOfMonth(start), field, new ArrayList<>());
            } catch (ParseException e) {
                throw new NotFoundException("信息未能获取");
            }
            List<StockAttribute> attributes = stock.getAttributes();
            if (attributes.size() == 0) {
                VolumeChartVO vo = new VolumeChartVO(PeriodEnum.MONTH, start.substring(0, 7), 0, true);
                list.add(vo);
                Calendar date = null;
                try {
                    date = TimeConvert.covertToCalendar(start);
                } catch (ParseException e) {
                    throw new NotFoundException("信息未能获取");
                }
                date.add(Calendar.MONTH, 1);
                start = TimeConvert.getDisplayDate(date);
                continue;
            }
            double total = 0;
            for (StockAttribute attribute : attributes) {
                total += Double.parseDouble(attribute.getAttribute(volume));
            }
            boolean isRise = CalHelper.isRise(Double.parseDouble(attributes.get(0).getAttribute(startPrice)), Double.parseDouble(attributes.get(attributes.size() - 1).getAttribute(endPrice)));
            VolumeChartVO vo = new VolumeChartVO(PeriodEnum.MONTH, start.substring(0, 7), (int) (total ), isRise);
            list.add(vo);
            Calendar date = null;
            try {
                date = TimeConvert.covertToCalendar(start);
            } catch (ParseException e) {
                throw new NotFoundException("信息未能获取");
            }
            date.add(Calendar.MONTH, 1);
            start = TimeConvert.getDisplayDate(date);
        } while (!start.equalsIgnoreCase(end));

        SingleVolumeVO svo = new SingleVolumeVO(list, TypeOfVolumn.SINGLE, name, number);
        svo.setLabelInfo("月交易量统计图", "时间", "万手");
        return svo;
    }
}
