#!/usr/bin/env bash
export OMP_NUM_THREADS=8

CONFIG=$1
GPUS=$2
PORT=${PORT:-29301}

#PYTHONPATH="$(dirname $0)/..":$PYTHONPATH \
source ./venv/bin/activate

sbatch \
--cpus-per-task=5 \
-p v100 \
--gres=gpu:a100:3 \
--mem=32000 \
-t 10:00:00 \
--job-name=segm \
--ntasks=3 \
--ntasks-per-node=3 \
--output=./logs/run_"%j" \
\
--wrap="python3.9 -m torch.distributed.launch --nproc_per_node=$GPUS --master_port=$PORT $(dirname "$0")/train.py $CONFIG --launcher pytorch --deterministic"
