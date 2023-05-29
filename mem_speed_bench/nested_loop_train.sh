#!/bin/bash

declare -a col_sizes=(0 16 64 128 256 512 1024)
declare -a percs=(0.01)

for col_size in "${col_sizes[@]}"; do
    for perc in "${percs[@]}"; do
        perc_filename=$(echo "$perc" | tr '.' '_')
        python ./arxiv/train_full_batch.py --conf ./arxiv/conf/sage.yaml --n_bits 2 --kept_frac 0.125 --debug_mem --test_speed --test_co2 --col_size "$col_size" --perc "$perc" > "output2_col_size_${col_size}_${perc_filename}_perc.txt"
    done
done
