export CUDA_VISIBLE_DEVICES=0 #,1,2,3
GPUS=0 #,1,2,3
python3 extract_features.py --mode d2 \
         --num-cpus 32 --gpu $GPUS \
         --extract-mode bboxes \
         --config-file configs/d2/test-d2-X152.yaml \
         --image-dir /storage/data/wuyu1/refreasoning/data/images \
         --out-dir /storage/group/hexm/weiyn/refreasoning/det_results/faster_rcnn_x152_NMS0p3_th0p0_max100_min10_test \
         --resume