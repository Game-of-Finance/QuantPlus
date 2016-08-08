package bl.analyse.impl;

import bl.impl.StockImpl;
import org.junit.Test;
import util.json.JsonConverter;

/**
 * Created by JiachenWang on 2016/6/4.
 */
public class PredictBLImplTest {
    @Test
    public void analyseEMA() throws Exception {

    }

    @Test
    public void getVarianceValue() throws Exception {
        PredictBLImpl t = new PredictBLImpl(new StockImpl(), new TechnicalAnalysis());
        String str = t.getVarianceValue("sh600600");
        System.out.println(JsonConverter.jsonOfObject(str));
        System.out.println( str);
    }

    @Test
    public void getSeasonPriceValue() throws Exception {
        PredictBLImpl t = new PredictBLImpl(new StockImpl(), new TechnicalAnalysis());
        String str = t.analyseSeasonPrice("sh600600");
        System.out.println(JsonConverter.jsonOfObject(str));
        System.out.println( str);
    }

    @Test
    public void getSeasonVolumeValue() throws Exception {
        PredictBLImpl t = new PredictBLImpl(new StockImpl(), new TechnicalAnalysis());
        System.out.println( t.getSeasonVolumeValue("sh600600"));
    }


    @Test
    public void testEMA() throws Exception {
        PredictBLImpl t = new PredictBLImpl(new StockImpl(), new TechnicalAnalysis());
        System.out.println(t.analyseEMA("sh600600"));
    }

    @Test
    public void multiAnlyse() throws Exception {
        PredictBLImpl t = new PredictBLImpl(new StockImpl(), new TechnicalAnalysis());
        System.out.println(t.multiAnlyse("sh600600"));
    }

    @Test
    public void analyseMACD() throws Exception {
        PredictBLImpl t = new PredictBLImpl(new StockImpl(), new TechnicalAnalysis());
        System.out.println( t.analyseMACD("sh600600"));
    }

    @Test
    public void analyseVariance() throws Exception {
        PredictBLImpl t = new PredictBLImpl(new StockImpl(), new TechnicalAnalysis());
        System.out.println( t.analyseVariance("sh600600"));
    }

    @Test
    public void analyseRSI() throws Exception {
        PredictBLImpl t = new PredictBLImpl(new StockImpl(), new TechnicalAnalysis());
        System.out.println( t.analyseRSI("sh600600"));
    }

    @Test
    public void analyseArbr() throws Exception {
        PredictBLImpl t = new PredictBLImpl(new StockImpl(), new TechnicalAnalysis());
        System.out.println( t.analyseArbr("sh600600"));
    }

    @Test
    public void analyseArima() throws Exception {
        PredictBLImpl t = new PredictBLImpl(new StockImpl(), new TechnicalAnalysis());
        System.out.println( t.analyseArima("sh600600"));
    }

    @Test
    public void analyseSeasonPrice() throws Exception {
        PredictBLImpl t = new PredictBLImpl(new StockImpl(), new TechnicalAnalysis());
        System.out.println( t.analyseSeasonPrice("sh600600"));
    }

    @Test
    public void analyseSeasonVolume() throws Exception {
        PredictBLImpl t = new PredictBLImpl(new StockImpl(), new TechnicalAnalysis());
        System.out.println( t.analyseSeasonVolume("sh600600"));
    }

}