from zipline.data.bundles import register

def chicer_ingest(
        environ,
        asset_db_writer,
        minute_bar_writer,
        adjustment_writer,
        calendar,
        cache,
        show_progress,
        output_dir
        ):
    import pandas as pd
    import numpy as np
    import datetime
    import MySQLdb as mdb

    def getCursor():
        conn = mdb.connect(host='127.0.0.1', user='chicer', passwd='chicer2016', db='chicer', port=3306, charset='utf8')
        cursor = conn.cursor()
        return [conn, cursor]

    