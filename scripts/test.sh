export CUDA_VISIBLE_DEVICES=0,1,2,3
GPU_NUM=1
CLS_AGNOSTIC=True


python3 train_net.py --mode d2 \
         --num-gpus $GPU_NUM \
         --config-file configs/d2/test-d2-r101.yaml \
         --eval-only \
         MODEL.RPN.CLS_AGNOSTIC $CLS_AGNOSTIC \
         MODEL.ROI_BOX_HEAD.CLS_AGNOSTIC_BBOX_REG $CLS_AGNOSTIC