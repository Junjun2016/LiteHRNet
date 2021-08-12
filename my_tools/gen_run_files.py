import os
import os.path as osp
import random
from glob import glob


def modify_config_file(source_file, target_file, old_str, new_str):
    """
    将替换的字符串写到一个新的文件中，然后将原文件删除，新文件改为原来文件的名字
    :param file: 文件路径
    :param old_str: 需要替换的字符串
    :param new_str: 替换的字符串
    :return: None
    """
    with open(
            source_file, "r", encoding="utf-8") as f1, open(
                target_file, "w", encoding="utf-8") as f2:
        for line in f1:
            if old_str in line:
                line = line.replace(old_str, new_str)
            f2.write(line)


if __name__ == "__main__":
    configs_root = 'configs/ccnet'
    key1 = 'ccnet'
    key2 = ''
    key3 = ''
    key4 = ''
    run_file_name = '{}-{}-{}-{}.sh'.format(key1, key2, key3, key4)
    run_file_name = osp.join(configs_root, run_file_name)

    # GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=1 tools/slurm_train.sh openmmlab mmseg1 dsn_exps/configs_mmseg/deeplabv3-r50_d8-832x832-real-contract_false-align_false-80k-cityscapes.py --seed=0
    # with_cp = "GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=2 tools/slurm_train.sh openmmlab mmseg_{} {} --seed=0 --options model.backbone.with_cp=True"
    with_cp = "MASTER_PORT={} GPUS=4 GPUS_PER_NODE=4 CPUS_PER_TASK=5 tools/slurm_train.sh openmmlab mmseg_{} {} --seed=0"
    without_cp = "MASTER_PORT={} GPUS=4 GPUS_PER_NODE=4 CPUS_PER_TASK=5 tools/slurm_train.sh openmmlab mmseg_{} {} --seed=0 &"

    configs = glob(
        osp.join(configs_root,
                 '*{}*{}*{}*{}*.py'.format(key1, key2, key3, key4)))
    print(configs)
    with open(run_file_name, "w", encoding="utf-8") as f:
        for i, config in enumerate(configs):
            print('{}/{}, {}'.format(i + 1, len(configs), config))
            # if 'r101' in config:
            #     f.write(
            #         with_cp.format(random.randint(1025, 4999), i + 1, config) +
            #         '\n\n')
            # elif 'r50' in config:
            #     f.write(
            #         without_cp.format(
            #             random.randint(1025, 4999), i + 1, config) + '\n\n')
            f.write(
                without_cp.format(random.randint(1025, 4999), i + 1, config) +
                '\n\n')
            # print(without_cp.format(random.randint(1025, 4999), i + 1, config))
