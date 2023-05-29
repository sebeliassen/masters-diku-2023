#!/bin/bash

declare -a col_sizes=(0 16 64 128 256 512 1024)

for col_size in "${col_sizes[@]}"; do
    python ./arxiv/train_full_batch.py --conf ./arxiv/conf/sage.yaml --n_bits 2 --kept_frac 0.125 --col_size "$col_size" > "output_col_size_${col_size}_1_perc.txt"
done