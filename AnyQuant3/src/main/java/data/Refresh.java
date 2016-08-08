package data;

import bl.analyse.impl.SingleStatistic;
import bl.impl.StockImpl;
import dao.entity.Variance;
import dao.factory.DaoFactory;
import dao.impl.TradeReader;
import dao.service.StockReadService;
import dao.service.StockWriteService;
import dao.service.VarianceService;
import data.api.APIDataServiceUrlImplJson;
import data.impl.AnalysisDataImpl;
import data.impl.StockDataImpl;
import util.constant.StockConstant;
import util.exception.BadInputException;
import util.exception.NotFoundException;
import util.hibernate.HibernateUtils;
import util.json.JsonReader;
import util.time.DateCount;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

/**
 * Created by JiachenWang on 2016/5/18.
 */
public class Refresh {

    public static void main(String[] args) throws InterruptedException, IOException, NotFoundException, BadInputException {
        Refresh fresh = new Refresh();
        fresh.reVariance("2016-06-01");
        System.exit(1);
    }

    /**
     * 更新大盘基础数据
     *
     * @throws IOException
     * @throws InterruptedException
     */
    public void reBenchmark() throws IOException, InterruptedException {
        Process proc = Runtime.getRuntime().exec("python  C:\\Users\\Administrator\\Documents\\AnyQuant\\Benchmark.py");
        proc.waitFor();
    }

    /**
     * 更新信息地雷
     *
     * @throws IOException
     * @throws InterruptedException
     */
    public void reInfomine() throws IOException, InterruptedException {
        Process proc = Runtime.getRuntime().exec("python  C:\\Users\\Administrator\\Documents\\AnyQuant\\InfoMine.py");
        proc.waitFor();
    }

    /**
     * 更新分时图数据
     *
     * @throws IOException
     * @throws InterruptedException
     */
    public void reTrade() throws IOException, InterruptedException {
        Process proc = Runtime.getRuntime().exec("python  C:\\Users\\Administrator\\Documents\\AnyQuant\\NewDaily.py");
        proc.waitFor();
    }

    /**
     * 更新行业数据，按照季度计算
     */
    public void reIndustry() {

        //TODO
    }

    /**
     * 更新股票基础数据
     * 时间段 date ~ 当前日期
     *
     * @param date
     */
    public void reStock(String date) {
        StockReadService read = DaoFactory.getInstance().getStockReadService();
        HashMap<String, String> map = read.getStockNumAndName();

        APIDataServiceUrlImplJson api = new APIDataServiceUrlImplJson();
        JsonReader reader = new JsonReader(StockConstant.AllFields);
        StockWriteService write = DaoFactory.getInstance().getStockWriteService();
        int count = 1;
        for (String name : map.keySet()) {
            String id = map.get(name);
            System.out.println("process ：" + count++ + " / 2747");
            String json = null;
            try {
                json = api.getStockJson(id, date, DateCount.dateToStr(new Date()), StockConstant.AllFields);

                write.insertStockAttrs(reader.readStock(json));
            } catch (BadInputException e) {
                System.err.println("输入信息有误");
                e.printStackTrace();
            } catch (IOException e) {
                System.err.println("访问出错");
                e.printStackTrace();
            }
        }
        System.out.println("Finish download!!! ");
        HibernateUtils.closeFactory();
    }

    /**
     * 计算上一个月的总体方差情况
     *
     * @throws NotFoundException
     * @throws BadInputException
     */
    public void reVariance(String date) throws NotFoundException, BadInputException {
        //上月第一天和最后一天
        date = date.substring(0, 8) + "01";
        String end = DateCount.count(date, -1);
        String start = end.substring(0, 8) + "01";


        StockReadService read = DaoFactory.getInstance().getStockReadService();
        SingleStatistic singleStatistic = new SingleStatistic(new StockImpl(), new StockDataImpl(read), new AnalysisDataImpl(new TradeReader()));
        List<Variance> list = singleStatistic.calAllVarianceOfPrice(start, end);
        VarianceService io = DaoFactory.getInstance().getVarianceService();

        io.setAllVariance(list);
    }

}
