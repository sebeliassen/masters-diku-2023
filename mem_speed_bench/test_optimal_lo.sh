#!/bin/bash

declare -a col_sizes=(0 16 64 128 256 512 1024)

# loop without --use_optimal_lo
for col_size in "${col_sizes[@]}"; do
  python ./arxiv/train_full_batch.py --conf ./arxiv/conf/sage.yaml --n_bits 2 --kept_frac 0.125 --col_size "$col_size" >> "output_no_optimal_lo_col_size_${col_size}_acc.txt"
done

# loop with --use_optimal_lo
for col_size in "${col_sizes[@]}"; do
  python ./arxiv/train_full_batch.py --conf ./arxiv/conf/sage.yaml --n_bits 2 --kept_frac 0.125 --col_size "$col_size" --use_optimal_lo >> "output_optimal_lo_col_size_${col_size}_acc.txt"
done

