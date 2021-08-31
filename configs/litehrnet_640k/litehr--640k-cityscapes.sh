MASTER_PORT=4862 GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_1 configs/litehrnet_640k/fcn_litehr30-with-head_512x1024_8x2_640k_cityscapes.py --seed=0 &

MASTER_PORT=1425 GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_2 configs/litehrnet_640k/fcn_litehr18-without-head_512x1024_8x2_640k_cityscapes.py --seed=0 &

MASTER_PORT=4821 GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_3 configs/litehrnet_640k/fcn_litehr30-without-head_512x1024_8x2_640k_cityscapes.py --seed=0 &

MASTER_PORT=2162 GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_4 configs/litehrnet_640k/fcn-resize-concat_litehr18-with-head_512x1024_8x2_640k_cityscapes.py --seed=0 &

MASTER_PORT=2516 GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_5 configs/litehrnet_640k/fcn-resize-concat_litehr30-with-head_512x1024_8x2_640k_cityscapes.py --seed=0 &

MASTER_PORT=2499 GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_6 configs/litehrnet_640k/fcn-resize-concat_litehr30-without-head_512x1024_8x2_640k_cityscapes.py --seed=0 &

MASTER_PORT=3097 GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_7 configs/litehrnet_640k/fcn_litehr18-with-head_512x1024_8x2_640k_cityscapes.py --seed=0 &

MASTER_PORT=1914 GPUS=8 GPUS_PER_NODE=8 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_8 configs/litehrnet_640k/fcn-resize-concat_litehr18-without-head_512x1024_8x2_640k_cityscapes.py --seed=0 &

