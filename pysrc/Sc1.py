from zipline.api import order, record, symbol
from zipline.data import *


def initialize(context):
    pass


def handle_data(context, data):
    order(symbol('sh600315'), 10)
    record(sh600315=data.current(symbol('sh600315'), 'price'))
    return
