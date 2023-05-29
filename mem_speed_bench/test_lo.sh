#!/bin/bash

# Define start, end and increment
start=1.64
last=1.8
increment=0.01

# Run the loop
for lo_var in $(seq $start $increment $last)
do
    python ./arxiv/train_full_batch.py --conf ./arxiv/conf/sage.yaml --n_bits 2 --kept_frac 0.125 --lo $lo_var --runs 3 > "output_lo_test_$(printf "%.3f" $lo_var).txt"
done
