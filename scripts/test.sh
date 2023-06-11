export CUDA_VISIBLE_DEVICES=0,1,2,3
GPU_NUM=1

python3 train_net.py --mode d2 \
         --num-gpus $GPU_NUM \
         --config-file configs/d2/test-d2-r101.yaml \
         --eval-only
