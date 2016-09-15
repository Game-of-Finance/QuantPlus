package web.tools.backtesting;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

/**
 * Created by NJU on 2016/9/8.
 */
public class StreamGobbler extends Thread {
    InputStream is;
    String      type;

    StreamGobbler(InputStream is, String type) {
        this.is = is;
        this.type = type;
    }

    public void run() {
        try {
            InputStreamReader isr = new InputStreamReader(is);
            BufferedReader br = new BufferedReader(isr);
            String line = null;
            while ((line = br.readLine()) != null)
                System.out.println(type + ">" + line);
        } catch (IOException ioe) {
            ioe.printStackTrace();
        }
    }
}