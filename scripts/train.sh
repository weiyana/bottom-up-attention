export CUDA_VISIBLE_DEVICES=0,1,2,3
GPU_NUM=1
OUTPUT_DIR=outputs-binary

# LOSS WEIGHT
OBJ_CLS_COEF=0.0
OBJ_CLS_BINARY_COEF=1.0

python train_net.py --mode d2 \
         --num-gpus $GPU_NUM \
         --config-file configs/d2/train-d2-r101.yaml \
         --resume \
         OUTPUT_DIR $OUTPUT_DIR \
         DATALOADER.NUM_WORKERS 16 \
         MODEL.RPN.OBJ_CLS_LOSS_WEIGHT $OBJ_CLS_COEF \
         MODEL.RPN.OBJ_CLS_BINARY_LOSS_WEIGHT $OBJ_CLS_BINARY_COEF \