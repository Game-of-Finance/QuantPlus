#! /usr/bin/env python
# -*- coding: utf-8 -*-



if __name__ == '__main__':
    import pandas as pd
    import sys

    if len(sys.argv) < 2:
        print("error: file not found")
        sys.exit(1)

    direction = sys.argv[1]  # xx/xx/xx.pickle
    perf = pd.read_pickle(direction)
    direction = direction[:-7]+'.csv'
    perf.to_csv(direction,index_label='date')
    print direction
    # perf.to_json(direction+'.json',date_format='iso',double_precision=3,force_ascii=False)

    # json_file = open(direction+".json", 'w')
    # json_file.write(rj)
    # json_file.close()
