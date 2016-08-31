package web.model.strategy.json;

import java.util.List;

/**
 * Created by xyf on 2016/9/1 0001.
 */
public class Root {

    private SelectStockBean SelectStock;
    /**
     * Condition : {"C_MACD":{"name":"MACD","stock_index":"沪深300","peroid":"日","DIF短线":"12","DIF长线":"26","DEA":"9","select_box":false},"C_PB":{"name":"PB","upper":4,"low":2},"C_PE2":{"name":"PE2","upper":4,"low":2}}
     * Parameter : {"bear_position":0,"bear_to_bull":-1,"bull_to_bear":3}
     */

    private SelectTimeBean SelectTime;
    /**
     * cycle : 5
     * gains_calc : 收盘价
     * ideal_position : 10
     * position_upper : 13
     * position_low : 7
     * Buy_limit : [{"name":"排名名次","comparison":"<=","count":10}]
     * Sell_limit : [{"name":"排名名次","comparison":">=","count":20},{"name":"持有天数","comparison":">=","count":10},{"name":"买入后涨幅(止盈)","comparison":">=","count":10}]
     */

    private TradeBean Trade;
    /**
     * start : 2015-08-31
     * end : 2016-08-31
     * initial_money : 10000
     * reference : 沪深300
     */

    private StrategyTestBean StrategyTest;

    public SelectStockBean getSelectStock() {
        return SelectStock;
    }

    public void setSelectStock(SelectStockBean SelectStock) {
        this.SelectStock = SelectStock;
    }

    public SelectTimeBean getSelectTime() {
        return SelectTime;
    }

    public void setSelectTime(SelectTimeBean SelectTime) {
        this.SelectTime = SelectTime;
    }

    public TradeBean getTrade() {
        return Trade;
    }

    public void setTrade(TradeBean Trade) {
        this.Trade = Trade;
    }

    public StrategyTestBean getStrategyTest() {
        return StrategyTest;
    }

    public void setStrategyTest(StrategyTestBean StrategyTest) {
        this.StrategyTest = StrategyTest;
    }

    public static class SelectStockBean {
        /**
         * name : MACD
         * comparison : >
         * count : 0
         */

        private List<FilterBean> Filter;
        /**
         * name : 流通市值
         * order : ascd
         * weight : 1
         */

        private List<SortBean> Sort;

        public List<FilterBean> getFilter() {
            return Filter;
        }

        public void setFilter(List<FilterBean> Filter) {
            this.Filter = Filter;
        }

        public List<SortBean> getSort() {
            return Sort;
        }

        public void setSort(List<SortBean> Sort) {
            this.Sort = Sort;
        }

        public static class FilterBean {
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

        public static class SortBean {
            private String name;
            private String order;
            private String weight;

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

            public String getWeight() {
                return weight;
            }

            public void setWeight(String weight) {
                this.weight = weight;
            }
        }
    }

    public static class SelectTimeBean {
        /**
         * C_MACD : {"name":"MACD","stock_index":"沪深300","peroid":"日","DIF短线":"12","DIF长线":"26","DEA":"9","select_box":false}
         * C_PB : {"name":"PB","upper":4,"low":2}
         * C_PE2 : {"name":"PE2","upper":4,"low":2}
         */

        private ConditionBean Condition;
        /**
         * bear_position : 0
         * bear_to_bull : -1
         * bull_to_bear : 3
         */

        private ParameterBean Parameter;

        public ConditionBean getCondition() {
            return Condition;
        }

        public void setCondition(ConditionBean Condition) {
            this.Condition = Condition;
        }

        public ParameterBean getParameter() {
            return Parameter;
        }

        public void setParameter(ParameterBean Parameter) {
            this.Parameter = Parameter;
        }

        public static class ConditionBean {
            /**
             * name : MACD
             * stock_index : 沪深300
             * peroid : 日
             * DIF短线 : 12
             * DIF长线 : 26
             * DEA : 9
             * select_box : false
             */

            private CMACDBean C_MACD;
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

            private CPE2Bean C_PE2;

            public CMACDBean getC_MACD() {
                return C_MACD;
            }

            public void setC_MACD(CMACDBean C_MACD) {
                this.C_MACD = C_MACD;
            }

            public CPBBean getC_PB() {
                return C_PB;
            }

            public void setC_PB(CPBBean C_PB) {
                this.C_PB = C_PB;
            }

            public CPE2Bean getC_PE2() {
                return C_PE2;
            }

            public void setC_PE2(CPE2Bean C_PE2) {
                this.C_PE2 = C_PE2;
            }

            public static class CMACDBean {
                private String name;
                private String stock_index;
                private String peroid;
                private String DIF短线;
                private String DIF长线;
                private String DEA;
                private boolean select_box;

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

                public String getPeroid() {
                    return peroid;
                }

                public void setPeroid(String peroid) {
                    this.peroid = peroid;
                }

                public String getDIF短线() {
                    return DIF短线;
                }

                public void setDIF短线(String DIF短线) {
                    this.DIF短线 = DIF短线;
                }

                public String getDIF长线() {
                    return DIF长线;
                }

                public void setDIF长线(String DIF长线) {
                    this.DIF长线 = DIF长线;
                }

                public String getDEA() {
                    return DEA;
                }

                public void setDEA(String DEA) {
                    this.DEA = DEA;
                }

                public boolean isSelect_box() {
                    return select_box;
                }

                public void setSelect_box(boolean select_box) {
                    this.select_box = select_box;
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

        private List<BuyLimitBean> Buy_limit;
        /**
         * name : 排名名次
         * comparison : >=
         * count : 20
         */

        private List<SellLimitBean> Sell_limit;

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
            return Buy_limit;
        }

        public void setBuy_limit(List<BuyLimitBean> Buy_limit) {
            this.Buy_limit = Buy_limit;
        }

        public List<SellLimitBean> getSell_limit() {
            return Sell_limit;
        }

        public void setSell_limit(List<SellLimitBean> Sell_limit) {
            this.Sell_limit = Sell_limit;
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
        private int initial_money;
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

        public int getInitial_money() {
            return initial_money;
        }

        public void setInitial_money(int initial_money) {
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
