package util.split;

import org.junit.Test;

import java.util.List;

import static org.junit.Assert.*;

/**
 * Created by Lin on 2016/6/13.
 */
public class StringSplitTest {
    @Test
    public void splitString() throws Exception {
        String s = "223.42aldfjalkfj.23324,dkfjslkd2.34,j342中午sldf34.3";
        List<String> strs = StringSplit.splitString(s);
        System.out.println("size:"+strs.size());
        for(String temp:strs){
            System.out.println(temp);
        }
    }

}