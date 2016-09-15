package web.model.btAndVt;

/**
 * Created by linyufan on 16/9/7.
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



}
