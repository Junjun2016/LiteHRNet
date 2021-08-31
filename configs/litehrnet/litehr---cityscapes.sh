MASTER_PORT=4139 GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_1 configs/litehrnet/fcn-resize-concat_litehr30-without-head_512x1024_8x2_160k_cityscapes.py --seed=0 &

MASTER_PORT=1183 GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_2 configs/litehrnet/fcn_litehr18-without-head_512x1024_8x2_160k_cityscapes.py --seed=0 &

MASTER_PORT=2599 GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_3 configs/litehrnet/fcn-resize-concat_litehr18-with-head_512x1024_8x2_160k_cityscapes.py --seed=0 &

MASTER_PORT=2434 GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_4 configs/litehrnet/fcn-resize-concat_litehr18-without-head_512x1024_8x2_160k_cityscapes.py --seed=0 &

MASTER_PORT=2858 GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_5 configs/litehrnet/fcn_litehr18-with-head_512x1024_8x2_160k_cityscapes.py --seed=0 &

MASTER_PORT=3241 GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_6 configs/litehrnet/fcn_litehr30-without-head_512x1024_8x2_160k_cityscapes.py --seed=0 &

MASTER_PORT=3147 GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_7 configs/litehrnet/fcn_litehr30-with-head_512x1024_8x2_160k_cityscapes.py --seed=0 &

MASTER_PORT=4801 GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_8 configs/litehrnet/fcn-resize-concat_litehr30-with-head_512x1024_8x2_160k_cityscapes.py --seed=0 &

