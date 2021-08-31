_base_ = [
    '../_base_/models/fcn-resize-concat_litehr18-without-head.py',
    '../_base_/datasets/ade20k.py', '../_base_/default_runtime.py',
    '../_base_/schedules/schedule_640k.py'
]
model = dict(decode_head=dict(num_classes=150))
