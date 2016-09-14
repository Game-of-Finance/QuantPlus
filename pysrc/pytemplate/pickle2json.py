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
    direction = direction[:len(direction)-4]+'.json'
    print direction
    rj=perf.to_json(date_format='iso',double_precision=3,force_ascii=False)
    json_file = open(direction, 'w')
    json_file.write(rj)
    json_file.close()
