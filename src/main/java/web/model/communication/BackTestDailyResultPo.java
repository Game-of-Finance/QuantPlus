package web.model.communication;

/**
 * Created by linyufan on 16/9/14.
 */
public class BackTestDailyResultPo {
    public String date;

    public double alpha;                            //alpha系数

    public double annualized_returns;               //年化收益

    public double benchmark_annualized_returns;     //大盘年化收益

    public double benchmark_daily_returns;          //大盘日收益

    public double benchmark_total_returns;          //大盘总收益

    public double beta;                             //beta系数

    public double cash;                             //当前金额

    public double daily_returns;                    //日收益

    public double downside_risk;                    //下行风险

    public double information_rate;                 //

    public double market_value;                     //市场价格

    public double max_drawdown;                     //最大回撤率

    public double pnl;                              //经济损益

    public double portfolio_value;                  //投资组合总市值

    public String position;                         //当日持仓信息

    public double sharp;                            //sharp系数

    public double sortino;                          //索提诺比率

    public double total_commission;                 //佣金总额

    public double total_returns;                    //总收益

    public double total_tax;                        //总税费

    public double tracking_error;                   //追踪误差(Tracking Error):积极收益的标准差

    public String trades;                           //当日交易信息

    public double volatility;                       //波动率

    public long index;                              //索引

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public double getAlpha() {
        return alpha;
    }

    public void setAlpha(double alpha) {
        this.alpha = alpha;
    }

    public double getAnnualized_returns() {
        return annualized_returns;
    }

    public void setAnnualized_returns(double annualized_returns) {
        this.annualized_returns = annualized_returns;
    }

    public double getBenchmark_annualized_returns() {
        return benchmark_annualized_returns;
    }

    public void setBenchmark_annualized_returns(double benchmark_annualized_returns) {
        this.benchmark_annualized_returns = benchmark_annualized_returns;
    }

    public double getBenchmark_daily_returns() {
        return benchmark_daily_returns;
    }

    public void setBenchmark_daily_returns(double benchmark_daily_returns) {
        this.benchmark_daily_returns = benchmark_daily_returns;
    }

    public double getBenchmark_total_returns() {
        return benchmark_total_returns;
    }

    public void setBenchmark_total_returns(double benchmark_total_returns) {
        this.benchmark_total_returns = benchmark_total_returns;
    }

    public double getBeta() {
        return beta;
    }

    public void setBeta(double beta) {
        this.beta = beta;
    }

    public double getCash() {
        return cash;
    }

    public void setCash(double cash) {
        this.cash = cash;
    }

    public double getDaily_returns() {
        return daily_returns;
    }

    public void setDaily_returns(double daily_returns) {
        this.daily_returns = daily_returns;
    }

    public double getDownside_risk() {
        return downside_risk;
    }

    public void setDownside_risk(double downside_risk) {
        this.downside_risk = downside_risk;
    }

    public double getInformation_rate() {
        return information_rate;
    }

    public void setInformation_rate(double information_rate) {
        this.information_rate = information_rate;
    }

    public double getMarket_value() {
        return market_value;
    }

    public void setMarket_value(double market_value) {
        this.market_value = market_value;
    }

    public double getMax_drawdown() {
        return max_drawdown;
    }

    public void setMax_drawdown(double max_drawdown) {
        this.max_drawdown = max_drawdown;
    }

    public double getPnl() {
        return pnl;
    }

    public void setPnl(double pnl) {
        this.pnl = pnl;
    }

    public double getPortfolio_value() {
        return portfolio_value;
    }

    public void setPortfolio_value(double portfolio_value) {
        this.portfolio_value = portfolio_value;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public double getSharp() {
        return sharp;
    }

    public void setSharp(double sharp) {
        this.sharp = sharp;
    }

    public double getSortino() {
        return sortino;
    }

    public void setSortino(double sortino) {
        this.sortino = sortino;
    }

    public double getTotal_commission() {
        return total_commission;
    }

    public void setTotal_commission(double total_commission) {
        this.total_commission = total_commission;
    }

    public double getTotal_returns() {
        return total_returns;
    }

    public void setTotal_returns(double total_returns) {
        this.total_returns = total_returns;
    }

    public double getTotal_tax() {
        return total_tax;
    }

    public void setTotal_tax(double total_tax) {
        this.total_tax = total_tax;
    }

    public double getTracking_error() {
        return tracking_error;
    }

    public void setTracking_error(double tracking_error) {
        this.tracking_error = tracking_error;
    }

    public String getTrades() {
        return trades;
    }

    public void setTrades(String trades) {
        this.trades = trades;
    }

    public double getVolatility() {
        return volatility;
    }

    public void setVolatility(double volatility) {
        this.volatility = volatility;
    }

    public long getIndex() {
        return index;
    }

    public void setIndex(long index) {
        this.index = index;
    }
}
