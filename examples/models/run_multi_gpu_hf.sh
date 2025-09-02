#! /usr/bin/env bash

env PATH=/usr/local/musa/bin:${PATH}\
    LD_LIBRARY_PATH=/usr/local/musa/lib\
    PYTHONPATH=/home/Megatron-LM:/home/megatron-lm-musa-patch:${PYTHONPATH}\
    GLOO_SOCKET_IFNAME=bond0\
    HF_ENDPOINT=https://hf-mirror.com\
    torchrun --nproc-per-node 8 ./multi_gpu_hf.py\
    --output-dir /mnt/seed-program/001688/checkpoint/deepseek\
    --hf-model-id /mnt/seed-program/001688/checkpoint/deepseek/DeepSeek-V2-Lite\
    --megatron-save-path /mnt/seed-program/001688/checkpoint/deepseek/DeepSeek-V2-Lite-Megatron
