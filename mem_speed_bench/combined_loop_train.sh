#!/bin/bash

declare -a col_sizes=(0 64 256 1024)
declare -a non_ogbn_datasets=("flickr" "reddit2")
declare -a ogbn_datasets=("arxiv")

echo "" > timestamps.txt

# ogbn datasets
for dataset in "${ogbn_datasets[@]}"; do
    echo "$(date) - Processing ogbn dataset: $dataset" >> timestamps.txt
    for col_size in "${col_sizes[@]}"; do
        python ./arxiv/train_full_batch.py --conf ./arxiv/conf/sage.yaml --n_bits 2 --kept_frac 0.125 --runs 3 --col_size "$col_size"
    done
done

# Non-ogbn datasets
for dataset in "${non_ogbn_datasets[@]}"; do
    echo "$(date) - Processing non-ogbn dataset: $dataset" >> timestamps.txt
    for col_size in "${col_sizes[@]}"; do        
        python ./non_ogb_datasets/train_full_batch.py --conf ./non_ogb_datasets/conf/sage.yaml --n_bits 2 --kept_frac 0.125 --dataset "$dataset" --grad_norm 0.5 --runs 3 --col_size "$col_size"
    done
done
