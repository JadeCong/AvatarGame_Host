#!/bin/bash

# launch the application for 3d human pose estimation(yolov5, hrnet and to3d) with MPII dataset
python3 app-yolov5_hrnet_to3d-mpii.py \
    --config app-yolov5_hrnet_to3d-mpii.yaml \
    --device 0 \
    --local_rank 0 \
    --seed 26 \
    --weights $(cd $(dirname $0) && cd ../../data && pwd -P)/weights/pretrained/yolov5/pytorch/yolov5/yolov5l.pt \
    --source 0 \
    --conf_thres 0.8 \
    --classes 0  # classes 0 for human class in COCO dataset for human detection
