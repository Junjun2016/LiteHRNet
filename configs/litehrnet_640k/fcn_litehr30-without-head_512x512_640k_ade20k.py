_base_ = [
    '../_base_/models/fcn_litehr30-without-head.py',
    '../_base_/datasets/ade20k.py', '../_base_/default_runtime.py',
    '../_base_/schedules/schedule_640k.py'
]
model = dict(decode_head=dict(num_classes=150))
find_unused_parameters = True
