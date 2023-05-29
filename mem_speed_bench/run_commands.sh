#!/bin/bash

# Define the col_size and perc values
col_sizes=(256 0)
perc_values=(0.0001 0)

# Use nested for loops to run the command with the specified arguments
for col_size in "${col_sizes[@]}"; do
    for perc in "${perc_values[@]}"; do
        python ./arxiv/train_full_batch.py --conf ./arxiv/conf/sage.yaml --n_bits 2 --kept_frac 0.125 --col_size "$col_size" --perc "$perc"
    done
done