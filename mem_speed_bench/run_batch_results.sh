#!/bin/bash

# for i in {1..20}
# do
#   python ./arxiv/train_full_batch.py --conf ./arxiv/conf/sage.yaml --n_bits 2 --kept_frac 0.125 --runs 5 --use_optimal_lo >> "output_optimal_lo_long_acc.txt"
# done

# for i in {1..20}
# do
#   python ./arxiv/train_full_batch.py --conf ./arxiv/conf/sage.yaml --n_bits 2 --kept_frac 0.125 --runs 5 >> "output_no_optimal_lo_long_acc.txt"
# done

for i in {1..5}
do
  python ./non_ogb_datasets/train_full_batch.py --conf ./non_ogb_datasets/conf/sage.yaml --n_bits 2 --kept_frac 0.125 --dataset flickr --runs 5 --grad_norm 0.5 --use_optimal_lo >> "output_g_flickr_optimal_lo_long_acc.txt"
  python ./non_ogb_datasets/train_full_batch.py --conf ./non_ogb_datasets/conf/sage.yaml --n_bits 2 --kept_frac 0.125 --dataset flickr --runs 5 --grad_norm 0.5 >> "output_g_flickr_no_optimal_lo_long_acc.txt"
done