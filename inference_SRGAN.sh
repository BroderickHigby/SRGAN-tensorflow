#!/usr/bin/env bash
CUDA_VISIBLE_DEVICES=0 python main.py \
    --output_dir ./result/ \
    --summary_dir ./result/log/ \
    --mode inference \
    --is_training False \
    --task SRGAN \
    --input_dir_LR ./data/test_HR/ \
    --num_resblock 16 \
    --perceptual_mode VGG54 \
    --pre_trained_model True \
    --TF_CPP_MIN_LOG_LEVEL=2\
    --checkpoint ./SRGAN_pre-trained/model-200000
