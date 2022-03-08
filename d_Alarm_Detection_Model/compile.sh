#!/bin/bash

cp /opt/vitis_ai/compiler/arch/DPUCZDX8G/KV260/arch.json .
vai_c_caffe --prototxt ./quantized/deploy.prototxt --caffemodel ./quantized/deploy.caffemodel --arch ./arch.json --output_dir ./output --net_name Alarm_Detection_Model
cp ./output/Alarm_Detection_Model.xmodel ./Alarm_Detection_Model
cp ./output/md5sum.txt ./Alarm_Detection_Model

exit 0
