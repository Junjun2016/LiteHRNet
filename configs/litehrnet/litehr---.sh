MASTER_PORT=4939 GPUS=2 GPUS_PER_NODE=2 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_1 configs/litehrnet/fcn_litehr30-without-head_512x512_160k_ade20k.py --seed=0 --options log_config.interval=1 evaluation.interval=5 runner.max_iters=20 &

MASTER_PORT=1890 GPUS=2 GPUS_PER_NODE=2 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_2 configs/litehrnet/fcn-resize-concat_litehr30-without-head_512x1024_8x2_160k_cityscapes.py --seed=0 --options log_config.interval=1 evaluation.interval=5 runner.max_iters=20 &

MASTER_PORT=3448 GPUS=2 GPUS_PER_NODE=2 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_3 configs/litehrnet/fcn_litehr18-without-head_512x1024_8x2_160k_cityscapes.py --seed=0 --options log_config.interval=1 evaluation.interval=5 runner.max_iters=20 &

MASTER_PORT=4436 GPUS=2 GPUS_PER_NODE=2 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_4 configs/litehrnet/fcn-resize-concat_litehr18-with-head_512x1024_8x2_160k_cityscapes.py --seed=0 --options log_config.interval=1 evaluation.interval=5 runner.max_iters=20 &

MASTER_PORT=1706 GPUS=2 GPUS_PER_NODE=2 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_5 configs/litehrnet/fcn_litehr18-without-head_512x512_160k_ade20k.py --seed=0 --options log_config.interval=1 evaluation.interval=5 runner.max_iters=20 &

MASTER_PORT=4603 GPUS=2 GPUS_PER_NODE=2 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_6 configs/litehrnet/fcn-resize-concat_litehr30-without-head_512x512_160k_ade20k.py --seed=0 --options log_config.interval=1 evaluation.interval=5 runner.max_iters=20 &

MASTER_PORT=3871 GPUS=2 GPUS_PER_NODE=2 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_7 configs/litehrnet/fcn_litehr18-with-head_512x512_160k_ade20k.py --seed=0 --options log_config.interval=1 evaluation.interval=5 runner.max_iters=20 &

MASTER_PORT=1163 GPUS=2 GPUS_PER_NODE=2 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_8 configs/litehrnet/fcn-resize-concat_litehr18-without-head_512x512_160k_ade20k.py --seed=0 --options log_config.interval=1 evaluation.interval=5 runner.max_iters=20 &

MASTER_PORT=3423 GPUS=2 GPUS_PER_NODE=2 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_9 configs/litehrnet/fcn-resize-concat_litehr18-without-head_512x1024_8x2_160k_cityscapes.py --seed=0 --options log_config.interval=1 evaluation.interval=5 runner.max_iters=20 &

MASTER_PORT=4946 GPUS=2 GPUS_PER_NODE=2 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_10 configs/litehrnet/fcn-resize-concat_litehr18-with-head_512x512_160k_ade20k.py --seed=0 --options log_config.interval=1 evaluation.interval=5 runner.max_iters=20 &

MASTER_PORT=3166 GPUS=2 GPUS_PER_NODE=2 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_11 configs/litehrnet/fcn_litehr18-with-head_512x1024_8x2_160k_cityscapes.py --seed=0 --options log_config.interval=1 evaluation.interval=5 runner.max_iters=20 &

MASTER_PORT=3649 GPUS=2 GPUS_PER_NODE=2 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_12 configs/litehrnet/fcn_litehr30-without-head_512x1024_8x2_160k_cityscapes.py --seed=0 --options log_config.interval=1 evaluation.interval=5 runner.max_iters=20 &

MASTER_PORT=2059 GPUS=2 GPUS_PER_NODE=2 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_13 configs/litehrnet/fcn_litehr30-with-head_512x1024_8x2_160k_cityscapes.py --seed=0 --options log_config.interval=1 evaluation.interval=5 runner.max_iters=20 &

MASTER_PORT=2438 GPUS=2 GPUS_PER_NODE=2 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_14 configs/litehrnet/fcn-resize-concat_litehr30-with-head_512x1024_8x2_160k_cityscapes.py --seed=0 --options log_config.interval=1 evaluation.interval=5 runner.max_iters=20 &

MASTER_PORT=3413 GPUS=2 GPUS_PER_NODE=2 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_15 configs/litehrnet/fcn_litehr30-with-head_512x512_160k_ade20k.py --seed=0 --options log_config.interval=1 evaluation.interval=5 runner.max_iters=20 &

MASTER_PORT=1188 GPUS=2 GPUS_PER_NODE=2 CPUS_PER_TASK=5 tools/slurm_train.sh mediaf mmseg_16 configs/litehrnet/fcn-resize-concat_litehr30-with-head_512x512_160k_ade20k.py --seed=0 --options log_config.interval=1 evaluation.interval=5 runner.max_iters=20 &

