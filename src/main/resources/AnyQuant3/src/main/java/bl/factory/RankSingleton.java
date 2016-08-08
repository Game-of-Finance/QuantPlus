package bl.factory;

import bl.impl.RankImpl;
import bl.service.RankService;

/**
 * Created by kylin on 16/6/13.
 * All rights reserved.
 */
public class RankSingleton {

    private static RankService rankService;

    public static RankService getRankService() {
        if (RankSingleton.rankService == null) {
            RankSingleton.rankService = new RankImpl();
        }
        return RankSingleton.rankService;
    }

}
