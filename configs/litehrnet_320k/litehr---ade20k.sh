MASTER_PORT=3424 GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_1 configs/litehrnet_320k/fcn_litehr18-without-head_512x512_320k_ade20k.py --seed=0 &

MASTER_PORT=4018 GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_2 configs/litehrnet_320k/fcn-resize-concat_litehr30-with-head_512x512_320k_ade20k.py --seed=0 &

MASTER_PORT=1699 GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_3 configs/litehrnet_320k/fcn-resize-concat_litehr18-without-head_512x512_320k_ade20k.py --seed=0 &

MASTER_PORT=3898 GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_4 configs/litehrnet_320k/fcn_litehr30-with-head_512x512_320k_ade20k.py --seed=0 &

MASTER_PORT=3738 GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_5 configs/litehrnet_320k/fcn-resize-concat_litehr30-without-head_512x512_320k_ade20k.py --seed=0 &

MASTER_PORT=1295 GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_6 configs/litehrnet_320k/fcn_litehr18-with-head_512x512_320k_ade20k.py --seed=0 &

MASTER_PORT=4029 GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_7 configs/litehrnet_320k/fcn_litehr30-without-head_512x512_320k_ade20k.py --seed=0 &

MASTER_PORT=1153 GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_8 configs/litehrnet_320k/fcn-resize-concat_litehr18-with-head_512x512_320k_ade20k.py --seed=0 &

