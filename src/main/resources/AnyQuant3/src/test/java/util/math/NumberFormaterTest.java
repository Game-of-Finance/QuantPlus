package util.math;

import org.junit.Test;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by kylin on 16/6/4.
 * All rights reserved.
 */
public class NumberFormaterTest {
    @Test
    public void cutDouble() throws Exception {
        System.out.println( NumberFormater.cutDouble( 123123.123123,3));
        System.out.println( NumberFormater.cutDouble(123123.123123,2));
        System.out.println( NumberFormater.cutDouble(123123.123123,0));
        System.out.println( NumberFormater.cutDouble(0.123123,3));
        System.out.println( NumberFormater.cutDouble(0.123123,1));

    }

    @Test
    public void formatDouble() throws Exception {

    }

    @Test
    public void formatPercent() throws Exception {

        List<String> result = new ArrayList<>();

        result.add(NumberFormater.formatPercent(0.0001));
        result.add(NumberFormater.formatPercent(0.0002));
        result.add(NumberFormater.formatPercent(0.0011));
        result.add(NumberFormater.formatPercent(0.0101));
        result.add(NumberFormater.formatPercent(0.1001));
        result.add(NumberFormater.formatPercent(1.0001));
        result.add(NumberFormater.formatPercent(3.0001));
        result.add(NumberFormater.formatPercent(11.0001));
        result.add(NumberFormater.formatPercent(21.0001));
        result.add(NumberFormater.formatPercent(331.0001));
        result.add(NumberFormater.formatPercent(-0.0001));
        result.add(NumberFormater.formatPercent(-0.2001));
        result.add(NumberFormater.formatPercent(-1.0001));
        result.add(NumberFormater.formatPercent(-21.0001));
        result.add(NumberFormater.formatPercent(-31.0001));
        result.add(NumberFormater.formatPercent(-41.0001));
        result.add(NumberFormater.formatPercent(-51.0001));

        result.sort((s1,s2)->s1.compareTo(s2));

        for (String s:result){
            System.out.println(s);
        }
    }




}