import copy
import json
import os
from glob import glob

import mmcv


def parse_log_json(file):
    with open(file, 'r') as f:
        lines = [line.strip() for line in f.readlines()]
        for keyword in keywords:
            lines = list(filter(lambda line: keyword in line, lines))
        # for l in lines:
        #     print(l)
        #     print(l.split(' | ')[1:3])
        res = [list(map(float, l.split(' | ')[1:3])) for l in lines]
        if len(res) == 0:
            return [0] * 6
        # print('###')
        # print(res)
        # print('###')
        last = copy.deepcopy(res[-1])
        last.append(len(res))
        sorted_index = sorted(
            range(len(res)), key=lambda x: res[x][0], reverse=True)
        # print(sorted_index)
        best = copy.deepcopy(res[sorted_index[0]])
        best.append(sorted_index[0] + 1)
        # print(res, best)
        # if best == None:
        #     print(file)
        # print('###')
        # print(file, best, type(best), last, type(last))
        # print('###')

        last.extend(best)

        return last


if __name__ == '__main__':
    save_path = 'results'
    mmcv.mkdir_or_exist(save_path)
    work_dirs = 'work_dirs'
    file_suffix = '.log.json'
    keywords = [
        '',
    ]
    # keywords_in_file = ['| global |']

    files = glob(os.path.join(work_dirs, '*', '*' + file_suffix))
    for keyword in keywords:
        files = list(filter(lambda x: keyword in x, files))
    files.sort()
    save_file_name = '-'.join(keywords) + '-results.csv'
    save_path = os.path.join(save_path, save_file_name)

    save_items = [
        'method', 'log time', 'mIoU last', 'mAcc last', 'last eval',
        'mIoU best', 'mAcc best', 'best eval'
    ]
    parse_format = '{}, {}, {}, {}, {}, {}, {}, {}\n'

    with open(save_path, 'w') as f:
        f.write(parse_format.format(*save_items))
        print(parse_format.format(*save_items))

        for file in files:
            result = file.split('/')[-2:]
            # print('#####', file)
            # print(result, type(result), parse_log(file, keywords_in_file))
            result.extend(parse_log_json(file))
            f.write(parse_format.format(*result))
            print(parse_format.format(*result))
