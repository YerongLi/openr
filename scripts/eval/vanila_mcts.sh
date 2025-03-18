#!/bin/bash
PYTHONPATH=$(pwd) python reason/evaluation/evaluate.py \
    --ninstance 5 \
    --LM Qwen2.5-Math-7B-Instruct \
    --RM Qwen2.5-Math-1.5B-Instruct \
    --task_name MATH \
    --temperature 0.7 \
    --max_new_tokens 2048 \
    --num_sequence 1 \
    --tree_max_width 4 \
    --tree_max_depth 10 \
    --save_dir debug \
    --method vanila_mcts \
    --num_worker 32 \
    --controller_addr http://127.0.0.1:28778 \
    --local
    # --controller_addr http://0.0.0.0:28777 \
    # --num_worker 32 \
