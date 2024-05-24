#!/usr/bin/env bash

export CUDA_HOME='/opt/cuda-11.5'
module load gpu/cuda-11.5

sbatch -p v100 \
--gres=gpu:a100:3 \
--cpus-per-task=3  \
--mem=32000  \
-t 10:00:00 \
--job-name=segm \
--output=./logs/run_"%j" \
--wrap="python3.9 setup.py build install"
