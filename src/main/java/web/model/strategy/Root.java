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
    	
    	private List<FixFilterBean> fixFilter;
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
        

        public List<FixFilterBean> getFixFilter() {
			return fixFilter;
		}

		public void setFixFilter(List<FixFilterBean> fixFilter) {
			this.fixFilter = fixFilter;
		}

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
        public static class FixFilterBean{
        	private String name;
        	private String comparison;
        	private String value;
        	private double low;
        	private double high;
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
			public String getValue() {
				return value;
			}
			public void setValue(String value) {
				this.value = value;
			}
			public double getLow() {
				return low;
			}
			public void setLow(double low) {
				this.low = low;
			}
			public double getHigh() {
				return high;
			}
			public void setHigh(double high) {
				this.high = high;
			}
        	
        }

        public static class FilterBean {
            private String name;
            private String comparison;
            private double count;
            private double count_low;
            private double count_upper;





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

            public double getCount() {
                return count;
            }

            public void setCount(double count) {
                this.count = count;
            }

            public double getCount_low() {
                return count_low;
            }

            public void setCount_low(double count_low) {
                this.count_low = count_low;
            }

            public double getCount_upper() {
                return count_upper;
            }

            public void setCount_upper(double count_upper) {
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

            public static class CMABean {
                private String name;
                private String comparison;
                private String value;
                private double low;
                private double high;
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
                public String getValue() {
                    return value;
                }
                public void setValue(String value) {
                    this.value = value;
                }
                public double getLow() {
                    return low;
                }
                public void setLow(double low) {
                    this.low = low;
                }
                public double getHigh() {
                    return high;
                }
                public void setHigh(double high) {
                    this.high = high;
                }
            }

            public static class CMACDBean {
                private String name;
                private String comparison;
                private String value;
                private double low;
                private double high;
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
                public String getValue() {
                    return value;
                }
                public void setValue(String value) {
                    this.value = value;
                }
                public double getLow() {
                    return low;
                }
                public void setLow(double low) {
                    this.low = low;
                }
                public double getHigh() {
                    return high;
                }
                public void setHigh(double high) {
                    this.high = high;
                }
            }


        }

        public static class ParameterBean {
            private double bear_position;
            private int bear_to_bull;
            private int bull_to_bear;

            public double getBear_position() {
                return bear_position;
            }

            public void setBear_position(double bear_position) {
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
        private int cycle; //调仓周期
        private int quantity;//持仓数量

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