#!/bin/bash

# Run the loop
while IFS= read -r lo_var
do
    python ./non_ogb_datasets/train_full_batch.py --conf ./non_ogb_datasets/conf/sage.yaml --n_bits 2 --kept_frac 0.5 --dataset flickr --grad_norm 0.5 --lo $lo_var --runs 3 > "nonlin_results/output_lo_nonlin_test_$(printf "%.3f" $lo_var).txt"
done < <(python3 generate_values.py)
