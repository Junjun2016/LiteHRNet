_base_ = [
    '../_base_/models/fcn_litehr18-without-head.py',
    '../_base_/datasets/cityscapes.py', '../_base_/default_runtime.py',
    '../_base_/schedules/schedule_160k.py'
]
find_unused_parameters = True
