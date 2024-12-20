#!/usr/bin/env bash

#SBATCH --job-name=noisy_jpeg_.1-992_1153_512_2048    # Job name
#SBATCH --ntasks=1                     # Run on a single Node
#SBATCH --cpus-per-task=4
#SBATCH --mem=160gb                    # Job memory request
#SBATCH --time=96:00:00                # Time limit hrs:min:sec
#SBATCH --partition=compsci-gpu
#SBATCH --gres=gpu:a5000:1
#SBATCH --output=logs/noisy_jpeg_.1-992_1153_512_2048_%j.out

eval "$(conda shell.bash hook)" 
conda activate 663FinalA
python main.py new --data-dir ../data/midjourney/ -b 2 -e 300 --name noisy_jpeg_.1-992_1153_512_2048 --size 512 -m 2048 --hash-mode None --masking-args 8 --split-image --message-block-length 2 --noise 'jpeg()'