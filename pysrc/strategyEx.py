#! /usr/bin/env python
# -*- coding: utf-8 -*-
from zipline.api import (
    history,
    order_target_value,
    record,
    symbol,
order
)


def initialize(context):
    context.i = 0


def handle_data(context, data):
    order(symbol('SH600000'), 10)
    record()
    # # Skip first 300 days to get full windows
    # context.i += 1
    # if context.i < 300:
    #     return
    #
    # # Compute averages
    # # history() has to be called with the same params
    # # from above and returns a pandas dataframe.
    # short_mavg = history(100, '1d', 'price').mean()
    # long_mavg = history(300, '1d', 'price').mean()
    #
    # sym = symbol('600315')
    #
    # # Trading logic
    # if short_mavg[sym] > long_mavg[sym]:
    #     # order_target orders as many shares as needed to
    #     # achieve the desired number of shares.
    #     order_target(sym, 100)
    # elif short_mavg[sym] < long_mavg[sym]:
    #     order_target(sym, 0)
    #
    # # Save values for later inspection
    # record(AAPL=data[sym].price,
    #        short_mavg=short_mavg[sym],
    #        long_mavg=long_mavg[sym])
