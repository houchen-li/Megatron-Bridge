#! /usr/bin/env bash

env PATH=/usr/local/musa/bin:${PATH}\
    LD_LIBRARY_PATH=/usr/local/musa/lib\
    PYTHONPATH=/home/Megatron-LM:/home/megatron-lm-musa-patch:${PYTHONPATH}\
    GLOO_SOCKET_IFNAME=bond0\
    HF_ENDPOINT=https://hf-mirror.com\
    python checkpoint_conversion.py import\
    --hf-model /mnt/seed-program/001688/checkpoint/deepseek/DeepSeek-V2-Lite\
    --megatron-path /mnt/seed-program/001688/checkpoint/deepseek/DeepSeek-V2-Lite-Megatron\
    --trust-remote-code

# env PATH=/usr/local/musa/bin:${PATH}\
#     LD_LIBRARY_PATH=/usr/local/musa/lib\
#     PYTHONPATH=/home/Megatron-LM:/home/megatron-lm-musa-patch:${PYTHONPATH}\
#     GLOO_SOCKET_IFNAME=bond0\
#     HF_ENDPOINT=https://hf-mirror.com\
#     python checkpoint_conversion.py export\
#     --megatron-path /mnt/seed-program/001688/checkpoint/deepseek/DeepSeek-V2-Lite-Megatron\
#     --hf-model /mnt/seed-program/001688/checkpoint/deepseek/DeepSeek-V2-Lite\
#     --hf-path /mnt/seed-program/001688/checkpoint/deepseek/DeepSeek-V2-Lite-From-Megatron
