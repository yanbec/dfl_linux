#!/bin/bash
DATA_SRC_ALIGNED=workspace/data_src/aligned
DATA_DST_ALIGNED=workspace/data_dst/aligned
MODEL_DIR=workspace/model
echo "Training"
python3 _internal/bin/DeepFaceLab/main.py train \
    --training-data-src-dir $DATA_SRC_ALIGNED \
    --training-data-dst-dir $DATA_DST_ALIGNED \
    --model-dir $MODEL_DIR \
    --model SAE \
    --force-gpu-idx 0
