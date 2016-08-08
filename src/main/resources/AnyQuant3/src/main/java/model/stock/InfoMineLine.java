package model.stock;

import java.net.MalformedURLException;
import java.net.URL;

/**
 * Created by kylin on 16/6/1.
 * All rights reserved.
 */
public class InfoMineLine {

    String date;

    String title;

    URL url;

    String stringUrl;

    public InfoMineLine(String date, String title, String stringUrl) {
        this.date = date;
        this.title = title;
        this.stringUrl = stringUrl;
        try {
            url = new URL(stringUrl);
        } catch (MalformedURLException e) {
            e.printStackTrace();
        }
    }

    public String getDate() {
        return date;
    }

    public String getTitle() {
        return title;
    }

    public URL getUrl() {
        return url;
    }

    public String getStringUrl() {
        return stringUrl;
    }
}
