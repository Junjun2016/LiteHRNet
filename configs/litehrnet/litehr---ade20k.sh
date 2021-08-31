MASTER_PORT=3365 GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_1 configs/litehrnet/fcn_litehr30-without-head_512x512_160k_ade20k.py --seed=0 &

MASTER_PORT=2820 GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_2 configs/litehrnet/fcn_litehr18-without-head_512x512_160k_ade20k.py --seed=0 &

MASTER_PORT=1455 GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_3 configs/litehrnet/fcn-resize-concat_litehr30-without-head_512x512_160k_ade20k.py --seed=0 &

MASTER_PORT=4258 GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_4 configs/litehrnet/fcn_litehr18-with-head_512x512_160k_ade20k.py --seed=0 &

MASTER_PORT=4968 GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_5 configs/litehrnet/fcn-resize-concat_litehr18-without-head_512x512_160k_ade20k.py --seed=0 &

MASTER_PORT=4476 GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_6 configs/litehrnet/fcn-resize-concat_litehr18-with-head_512x512_160k_ade20k.py --seed=0 &

MASTER_PORT=2889 GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_7 configs/litehrnet/fcn_litehr30-with-head_512x512_160k_ade20k.py --seed=0 &

MASTER_PORT=1521 GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_8 configs/litehrnet/fcn-resize-concat_litehr30-with-head_512x512_160k_ade20k.py --seed=0 &

