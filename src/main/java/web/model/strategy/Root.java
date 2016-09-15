package web.model.strategy;

import java.util.List;

public class Root{

    private SelectStockBean selectStock;
    /**
     * condition : {"c_MA":{"name":"MA","stock_index":"上证指数","period":"day","shortMA":5,"longMA":60,"selectBox":true},"c_MACD":{"name":"MACD","stock_index":"上证指数","period":"day","shortDIF":12,"longDIF":26,"DEA":9,"selectBox":false},"c_DMA":{"name":"DMA","stock_index":"上证指数","period":"day","shortMA":5,"longMA":60,"AMA":20},"c_TRIX":{"name":"TRIX","stock_index":"上证指数","period":"day","TRIX":120,"MATRIX":5},"c_MAVOL":{"name":"MAVOL","stock_index":"上证指数","period":"day","shortMA":5,"longMA":60,"selectBox":true},"c_MABias":{"name":"MABias","stock_index":"上证指数","period":"day","shortMA":5,"longMA":60,"low":-0.1,"upper":0.1},"c_PE":{"name":"PE","low":15,"upper":30},"C_PB":{"name":"PB","upper":4,"low":2},"c_PE2":{"name":"PE2","upper":4,"low":2},"c_PB2":{"name":"PB2","upper":4,"low":2}}
     * parameter : {"bear_position":0,"bear_to_bull":-1,"bull_to_bear":3}
     */

    private SelectTimeBean selectTime;
    /**
     * cycle : 5
     * gains_calc : 收盘价
     * ideal_position : 10
     * position_upper : 13
     * position_low : 7
     * buy_limit : [{"name":"排名名次","comparison":"<=","count":10}]
     * sell_limit : [{"name":"排名名次","comparison":">=","count":20},{"name":"持有天数","comparison":">=","count":10},{"name":"买入后涨幅(止盈)","comparison":">=","count":10}]
     */

    private TradeBean trade;
    /**
     * start : 2015-08-31
     * end : 2016-08-31
     * initial_money : 10000.0
     * reference : 沪深300
     */

    private StrategyTestBean strategyTest;

    public SelectStockBean getSelectStock() {
        return selectStock;
    }

    public void setSelectStock(SelectStockBean selectStock) {
        this.selectStock = selectStock;
    }

    public SelectTimeBean getSelectTime() {
        return selectTime;
    }

    public void setSelectTime(SelectTimeBean selectTime) {
        this.selectTime = selectTime;
    }

    public TradeBean getTrade() {
        return trade;
    }

    public void setTrade(TradeBean trade) {
        this.trade = trade;
    }

    public StrategyTestBean getStrategyTest() {
        return strategyTest;
    }

    public void setStrategyTest(StrategyTestBean strategyTest) {
        this.strategyTest = strategyTest;
    }

    public static class SelectStockBean {
        /**
         * name : MACD
         * comparison : >
         * count : 0
         * count_low : null
         * count_upper : null
         */

        private List<FilterBean> filter;
        /**
         * name : 流通市值
         * order : ascd
         * weight : 1
         */

        private List<SortBean> sort;

        public List<FilterBean> getFilter() {
            return filter;
        }

        public void setFilter(List<FilterBean> filter) {
            this.filter = filter;
        }

        public List<SortBean> getSort() {
            return sort;
        }

        public void setSort(List<SortBean> sort) {
            this.sort = sort;
        }

        public static class FilterBean {
            private String name;
            private String comparison;
            private int count;
            private Object count_low;
            private Object count_upper;

            public FilterBean() {
            }

            public FilterBean(String name, String comparison, int count, Object count_low, Object count_upper) {
                this.name = name;
                this.comparison = comparison;
                this.count = count;
                this.count_low = count_low;
                this.count_upper = count_upper;
            }

            public String getName() {
                return name;
            }

            public void setName(String name) {
                this.name = name;
            }

            public String getComparison() {
                return comparison;
            }

            public void setComparison(String comparison) {
                this.comparison = comparison;
            }

            public int getCount() {
                return count;
            }

            public void setCount(int count) {
                this.count = count;
            }

            public Object getCount_low() {
                return count_low;
            }

            public void setCount_low(Object count_low) {
                this.count_low = count_low;
            }

            public Object getCount_upper() {
                return count_upper;
            }

            public void setCount_upper(Object count_upper) {
                this.count_upper = count_upper;
            }
        }

        public static class SortBean {
            private String name;
            private String order;
            private int weight;

            public String getName() {
                return name;
            }

            public void setName(String name) {
                this.name = name;
            }

            public String getOrder() {
                return order;
            }

            public void setOrder(String order) {
                this.order = order;
            }

            public int getWeight() {
                return weight;
            }

            public void setWeight(int weight) {
                this.weight = weight;
            }
        }
    }

    public static class SelectTimeBean {
        /**
         * c_MA : {"name":"MA","stock_index":"上证指数","period":"day","shortMA":5,"longMA":60,"selectBox":true}
         * c_MACD : {"name":"MACD","stock_index":"上证指数","period":"day","shortDIF":12,"longDIF":26,"DEA":9,"selectBox":false}
         * c_DMA : {"name":"DMA","stock_index":"上证指数","period":"day","shortMA":5,"longMA":60,"AMA":20}
         * c_TRIX : {"name":"TRIX","stock_index":"上证指数","period":"day","TRIX":120,"MATRIX":5}
         * c_MAVOL : {"name":"MAVOL","stock_index":"上证指数","period":"day","shortMA":5,"longMA":60,"selectBox":true}
         * c_MABias : {"name":"MABias","stock_index":"上证指数","period":"day","shortMA":5,"longMA":60,"low":-0.1,"upper":0.1}
         * c_PE : {"name":"PE","low":15,"upper":30}
         * C_PB : {"name":"PB","upper":4,"low":2}
         * c_PE2 : {"name":"PE2","upper":4,"low":2}
         * c_PB2 : {"name":"PB2","upper":4,"low":2}
         */

        private ConditionBean condition;
        /**
         * bear_position : 0
         * bear_to_bull : -1
         * bull_to_bear : 3
         */

        private ParameterBean parameter;

        public ConditionBean getCondition() {
            return condition;
        }

        public void setCondition(ConditionBean condition) {
            this.condition = condition;
        }

        public ParameterBean getParameter() {
            return parameter;
        }

        public void setParameter(ParameterBean parameter) {
            this.parameter = parameter;
        }

        public static class ConditionBean {
            /**
             * name : MA
             * stock_index : 上证指数
             * period : day
             * shortMA : 5
             * longMA : 60
             * selectBox : true
             */

            private CMABean c_MA;
            /**
             * name : MACD
             * stock_index : 上证指数
             * period : day
             * shortDIF : 12
             * longDIF : 26
             * DEA : 9
             * selectBox : false
             */

            private CMACDBean c_MACD;
            /**
             * name : DMA
             * stock_index : 上证指数
             * period : day
             * shortMA : 5
             * longMA : 60
             * AMA : 20
             */

            private CDMABean c_DMA;
            /**
             * name : TRIX
             * stock_index : 上证指数
             * period : day
             * TRIX : 120
             * MATRIX : 5
             */

            private CTRIXBean c_TRIX;
            /**
             * name : MAVOL
             * stock_index : 上证指数
             * period : day
             * shortMA : 5
             * longMA : 60
             * selectBox : true
             */

            private CMAVOLBean c_MAVOL;
            /**
             * name : MABias
             * stock_index : 上证指数
             * period : day
             * shortMA : 5
             * longMA : 60
             * low : -0.1
             * upper : 0.1
             */

            private CMABiasBean c_MABias;
            /**
             * name : PE
             * low : 15
             * upper : 30
             */

            private CPEBean c_PE;
            /**
             * name : PB
             * upper : 4
             * low : 2
             */

            private CPBBean C_PB;
            /**
             * name : PE2
             * upper : 4
             * low : 2
             */

            private CPE2Bean c_PE2;
            /**
             * name : PB2
             * upper : 4
             * low : 2
             */

            private CPB2Bean c_PB2;

            public CMABean getC_MA() {
                return c_MA;
            }

            public void setC_MA(CMABean c_MA) {
                this.c_MA = c_MA;
            }

            public CMACDBean getC_MACD() {
                return c_MACD;
            }

            public void setC_MACD(CMACDBean c_MACD) {
                this.c_MACD = c_MACD;
            }

            public CDMABean getC_DMA() {
                return c_DMA;
            }

            public void setC_DMA(CDMABean c_DMA) {
                this.c_DMA = c_DMA;
            }

            public CTRIXBean getC_TRIX() {
                return c_TRIX;
            }

            public void setC_TRIX(CTRIXBean c_TRIX) {
                this.c_TRIX = c_TRIX;
            }

            public CMAVOLBean getC_MAVOL() {
                return c_MAVOL;
            }

            public void setC_MAVOL(CMAVOLBean c_MAVOL) {
                this.c_MAVOL = c_MAVOL;
            }

            public CMABiasBean getC_MABias() {
                return c_MABias;
            }

            public void setC_MABias(CMABiasBean c_MABias) {
                this.c_MABias = c_MABias;
            }

            public CPEBean getC_PE() {
                return c_PE;
            }

            public void setC_PE(CPEBean c_PE) {
                this.c_PE = c_PE;
            }

            public CPBBean getC_PB() {
                return C_PB;
            }

            public void setC_PB(CPBBean C_PB) {
                this.C_PB = C_PB;
            }

            public CPE2Bean getC_PE2() {
                return c_PE2;
            }

            public void setC_PE2(CPE2Bean c_PE2) {
                this.c_PE2 = c_PE2;
            }

            public CPB2Bean getC_PB2() {
                return c_PB2;
            }

            public void setC_PB2(CPB2Bean c_PB2) {
                this.c_PB2 = c_PB2;
            }

            public static class CMABean {
                private String name;
                private String stock_index;
                private String period;
                private int shortMA;
                private int longMA;
                private boolean selectBox;

                public String getName() {
                    return name;
                }

                public void setName(String name) {
                    this.name = name;
                }

                public String getStock_index() {
                    return stock_index;
                }

                public void setStock_index(String stock_index) {
                    this.stock_index = stock_index;
                }

                public String getPeriod() {
                    return period;
                }

                public void setPeriod(String period) {
                    this.period = period;
                }

                public int getShortMA() {
                    return shortMA;
                }

                public void setShortMA(int shortMA) {
                    this.shortMA = shortMA;
                }

                public int getLongMA() {
                    return longMA;
                }

                public void setLongMA(int longMA) {
                    this.longMA = longMA;
                }

                public boolean isSelectBox() {
                    return selectBox;
                }

                public void setSelectBox(boolean selectBox) {
                    this.selectBox = selectBox;
                }
            }

            public static class CMACDBean {
                private String name;
                private String stock_index;
                private String period;
                private int shortDIF;
                private int longDIF;
                private int DEA;
                private boolean selectBox;

                public String getName() {
                    return name;
                }

                public void setName(String name) {
                    this.name = name;
                }

                public String getStock_index() {
                    return stock_index;
                }

                public void setStock_index(String stock_index) {
                    this.stock_index = stock_index;
                }

                public String getPeriod() {
                    return period;
                }

                public void setPeriod(String period) {
                    this.period = period;
                }

                public int getShortDIF() {
                    return shortDIF;
                }

                public void setShortDIF(int shortDIF) {
                    this.shortDIF = shortDIF;
                }

                public int getLongDIF() {
                    return longDIF;
                }

                public void setLongDIF(int longDIF) {
                    this.longDIF = longDIF;
                }

                public int getDEA() {
                    return DEA;
                }

                public void setDEA(int DEA) {
                    this.DEA = DEA;
                }

                public boolean isSelectBox() {
                    return selectBox;
                }

                public void setSelectBox(boolean selectBox) {
                    this.selectBox = selectBox;
                }
            }

            public static class CDMABean {
                private String name;
                private String stock_index;
                private String period;
                private int shortMA;
                private int longMA;
                private int AMA;

                public String getName() {
                    return name;
                }

                public void setName(String name) {
                    this.name = name;
                }

                public String getStock_index() {
                    return stock_index;
                }

                public void setStock_index(String stock_index) {
                    this.stock_index = stock_index;
                }

                public String getPeriod() {
                    return period;
                }

                public void setPeriod(String period) {
                    this.period = period;
                }

                public int getShortMA() {
                    return shortMA;
                }

                public void setShortMA(int shortMA) {
                    this.shortMA = shortMA;
                }

                public int getLongMA() {
                    return longMA;
                }

                public void setLongMA(int longMA) {
                    this.longMA = longMA;
                }

                public int getAMA() {
                    return AMA;
                }

                public void setAMA(int AMA) {
                    this.AMA = AMA;
                }
            }

            public static class CTRIXBean {
                private String name;
                private String stock_index;
                private String period;
                private int TRIX;
                private int MATRIX;

                public String getName() {
                    return name;
                }

                public void setName(String name) {
                    this.name = name;
                }

                public String getStock_index() {
                    return stock_index;
                }

                public void setStock_index(String stock_index) {
                    this.stock_index = stock_index;
                }

                public String getPeriod() {
                    return period;
                }

                public void setPeriod(String period) {
                    this.period = period;
                }

                public int getTRIX() {
                    return TRIX;
                }

                public void setTRIX(int TRIX) {
                    this.TRIX = TRIX;
                }

                public int getMATRIX() {
                    return MATRIX;
                }

                public void setMATRIX(int MATRIX) {
                    this.MATRIX = MATRIX;
                }
            }

            public static class CMAVOLBean {
                private String name;
                private String stock_index;
                private String period;
                private int shortMA;
                private int longMA;
                private boolean selectBox;

                public String getName() {
                    return name;
                }

                public void setName(String name) {
                    this.name = name;
                }

                public String getStock_index() {
                    return stock_index;
                }

                public void setStock_index(String stock_index) {
                    this.stock_index = stock_index;
                }

                public String getPeriod() {
                    return period;
                }

                public void setPeriod(String period) {
                    this.period = period;
                }

                public int getShortMA() {
                    return shortMA;
                }

                public void setShortMA(int shortMA) {
                    this.shortMA = shortMA;
                }

                public int getLongMA() {
                    return longMA;
                }

                public void setLongMA(int longMA) {
                    this.longMA = longMA;
                }

                public boolean isSelectBox() {
                    return selectBox;
                }

                public void setSelectBox(boolean selectBox) {
                    this.selectBox = selectBox;
                }
            }

            public static class CMABiasBean {
                private String name;
                private String stock_index;
                private String period;
                private int shortMA;
                private int longMA;
                private double low;
                private double upper;

                public String getName() {
                    return name;
                }

                public void setName(String name) {
                    this.name = name;
                }

                public String getStock_index() {
                    return stock_index;
                }

                public void setStock_index(String stock_index) {
                    this.stock_index = stock_index;
                }

                public String getPeriod() {
                    return period;
                }

                public void setPeriod(String period) {
                    this.period = period;
                }

                public int getShortMA() {
                    return shortMA;
                }

                public void setShortMA(int shortMA) {
                    this.shortMA = shortMA;
                }

                public int getLongMA() {
                    return longMA;
                }

                public void setLongMA(int longMA) {
                    this.longMA = longMA;
                }

                public double getLow() {
                    return low;
                }

                public void setLow(double low) {
                    this.low = low;
                }

                public double getUpper() {
                    return upper;
                }

                public void setUpper(double upper) {
                    this.upper = upper;
                }
            }

            public static class CPEBean {
                private String name;
                private int low;
                private int upper;

                public String getName() {
                    return name;
                }

                public void setName(String name) {
                    this.name = name;
                }

                public int getLow() {
                    return low;
                }

                public void setLow(int low) {
                    this.low = low;
                }

                public int getUpper() {
                    return upper;
                }

                public void setUpper(int upper) {
                    this.upper = upper;
                }
            }

            public static class CPBBean {
                private String name;
                private int upper;
                private int low;

                public String getName() {
                    return name;
                }

                public void setName(String name) {
                    this.name = name;
                }

                public int getUpper() {
                    return upper;
                }

                public void setUpper(int upper) {
                    this.upper = upper;
                }

                public int getLow() {
                    return low;
                }

                public void setLow(int low) {
                    this.low = low;
                }
            }

            public static class CPE2Bean {
                private String name;
                private int upper;
                private int low;

                public String getName() {
                    return name;
                }

                public void setName(String name) {
                    this.name = name;
                }

                public int getUpper() {
                    return upper;
                }

                public void setUpper(int upper) {
                    this.upper = upper;
                }

                public int getLow() {
                    return low;
                }

                public void setLow(int low) {
                    this.low = low;
                }
            }

            public static class CPB2Bean {
                private String name;
                private int upper;
                private int low;

                public String getName() {
                    return name;
                }

                public void setName(String name) {
                    this.name = name;
                }

                public int getUpper() {
                    return upper;
                }

                public void setUpper(int upper) {
                    this.upper = upper;
                }

                public int getLow() {
                    return low;
                }

                public void setLow(int low) {
                    this.low = low;
                }
            }
        }

        public static class ParameterBean {
            private int bear_position;
            private int bear_to_bull;
            private int bull_to_bear;

            public int getBear_position() {
                return bear_position;
            }

            public void setBear_position(int bear_position) {
                this.bear_position = bear_position;
            }

            public int getBear_to_bull() {
                return bear_to_bull;
            }

            public void setBear_to_bull(int bear_to_bull) {
                this.bear_to_bull = bear_to_bull;
            }

            public int getBull_to_bear() {
                return bull_to_bear;
            }

            public void setBull_to_bear(int bull_to_bear) {
                this.bull_to_bear = bull_to_bear;
            }
        }
    }

    public static class TradeBean {
        private int cycle;
        private String gains_calc;
        private int ideal_position;
        private int position_upper;
        private int position_low;
        /**
         * name : 排名名次
         * comparison : <=
         * count : 10
         */

        private List<BuyLimitBean> buy_limit;
        /**
         * name : 排名名次
         * comparison : >=
         * count : 20
         */

        private List<SellLimitBean> sell_limit;

        public int getCycle() {
            return cycle;
        }

        public void setCycle(int cycle) {
            this.cycle = cycle;
        }

        public String getGains_calc() {
            return gains_calc;
        }

        public void setGains_calc(String gains_calc) {
            this.gains_calc = gains_calc;
        }

        public int getIdeal_position() {
            return ideal_position;
        }

        public void setIdeal_position(int ideal_position) {
            this.ideal_position = ideal_position;
        }

        public int getPosition_upper() {
            return position_upper;
        }

        public void setPosition_upper(int position_upper) {
            this.position_upper = position_upper;
        }

        public int getPosition_low() {
            return position_low;
        }

        public void setPosition_low(int position_low) {
            this.position_low = position_low;
        }

        public List<BuyLimitBean> getBuy_limit() {
            return buy_limit;
        }

        public void setBuy_limit(List<BuyLimitBean> buy_limit) {
            this.buy_limit = buy_limit;
        }

        public List<SellLimitBean> getSell_limit() {
            return sell_limit;
        }

        public void setSell_limit(List<SellLimitBean> sell_limit) {
            this.sell_limit = sell_limit;
        }

        public static class BuyLimitBean {
            private String name;
            private String comparison;
            private int count;

            public String getName() {
                return name;
            }

            public void setName(String name) {
                this.name = name;
            }

            public String getComparison() {
                return comparison;
            }

            public void setComparison(String comparison) {
                this.comparison = comparison;
            }

            public int getCount() {
                return count;
            }

            public void setCount(int count) {
                this.count = count;
            }
        }

        public static class SellLimitBean {
            private String name;
            private String comparison;
            private int count;

            public String getName() {
                return name;
            }

            public void setName(String name) {
                this.name = name;
            }

            public String getComparison() {
                return comparison;
            }

            public void setComparison(String comparison) {
                this.comparison = comparison;
            }

            public int getCount() {
                return count;
            }

            public void setCount(int count) {
                this.count = count;
            }
        }
    }

    public static class StrategyTestBean {
        private String start;
        private String end;
        private double initial_money;
        private String reference;

        public String getStart() {
            return start;
        }

        public void setStart(String start) {
            this.start = start;
        }

        public String getEnd() {
            return end;
        }

        public void setEnd(String end) {
            this.end = end;
        }

        public double getInitial_money() {
            return initial_money;
        }

        public void setInitial_money(double initial_money) {
            this.initial_money = initial_money;
        }

        public String getReference() {
            return reference;
        }

        public void setReference(String reference) {
            this.reference = reference;
        }
    }
}