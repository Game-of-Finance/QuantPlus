package util.enums;

/**
 * Created by kylin on 16/3/20.
 */
public enum TradeEnum {

    BUY("买盘"),SOLD("卖盘"),MID("中性盘");

    private String type;

    TradeEnum(String s) {
        this.type = s;
    }

    public String getType() {
        return type;
    }

    @Override
    public String toString() {
        return this.type;
    }

    public static TradeEnum getTradeEnum(String input) {
        for(TradeEnum tradeEnum:values()) {
            if(tradeEnum.type.equals(input)) return tradeEnum;
        }
        return null;
    }
}
