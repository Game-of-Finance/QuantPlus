import MySQLdb
import pandas as pd

import sys


def save(name, path):
    db = MySQLdb.connect("115.159.106.212", "root", "", "quantplus", port=3306, charset="utf8")

    cursor = db.cursor()

    create_cmd = "create table %s (" \
                "`date` text, alpha float, annualized_returns float, benchmark_annualized_returns float, " \
                "benchmark_daily_returns float, benchmark_total_returns float, `beta` float," \
                "`cash` float, daily_returns float, downside_risk float, information_rate float," \
                "market_value float, max_drawdown float, pnl float, portfolio_value float," \
                "positions text, `sharpe` float, sortino float,total_commission float," \
                "total_returns float, total_tax float, tracking_error float, trades text, " \
                "volatility float, `index` bigint auto_increment, primary key(`index`))"
    try:
        cursor.execute(create_cmd % name)
    except:
        print "already exists"

    insert_cmd = "insert into " + name + " (" \
                '`date`, alpha, annualized_returns, benchmark_annualized_returns, benchmark_daily_returns, ' \
                'benchmark_total_returns, `beta`, `cash`, daily_returns, downside_risk, information_rate,' \
                'market_value, max_drawdown, pnl, portfolio_value, positions, sharpe, sortino, total_commission,' \
                'total_returns, total_tax, tracking_error, trades, volatility) values (%s, %s, %s, %s, %s, %s, %s, ' \
                '%s, %s, %s, %s, %s, %s, %s, %s,  %s, %s, %s, %s, %s, %s, %s, "%s", %s)'

    data = []
    perf = pd.read_pickle(path)  # read in perf DataFrame
    for each in perf.index:
        temp = [str(each)]
        li = perf.ix[str(each)].values
        # print li[14]

        temp.extend(li[:14])
        temp.append(str(li[14])[58:-1])
        temp.extend(li[15:])
        data.append(temp)
    # print data
    count = 0
    # print (data[count * 1000, (count + 1) * 1000])
    # print data[0: 1000]
    # print insert_cmd % tuple(data[0])
    # cursor.execute(insert_cmd % tuple(data[0]))
    # db.commit()
    # db.close()
    for x in range(0, len(data)):
        cursor.executemany(insert_cmd, tuple(data[count*1000: (count + 1)*1000]))
        count += 1
        db.commit()
    cursor.executemany(insert_cmd, tuple(data[count*1000:]))
    db.commit()
    db.close()

save(sys.argv[1], sys.argv[2])


