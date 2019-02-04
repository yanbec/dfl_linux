#!/bin/bash
python3 _internal/bin/DeepFaceLab/main.py convert \
    --input-dir "workspace/data_dst" \
    --output-dir "workspace/data_dst\merged" \
    --aligned-dir "workspace/data_dst\aligned" \
    --model-dir "workspace/model" \
    --model SAE \
    --debug \
    --force-gpu-idx 0
