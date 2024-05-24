#!/usr/bin/env bash

export CUDA_HOME='/opt/cuda-11.5'
module load gpu/cuda-11.5

python3.9 -m venv venv
source venv/bin/activate
pip3.9 install -r /misc/home4/s0120/_scratch2/ViT-CoMer/segmentation/requirements.txt --no-cache-dir
pip3.9 install torch==1.9.0+cu111 torchvision==0.10.0+cu111 torchaudio==0.9.0 -f https://download.pytorch.org/whl/torch_stable.html --no-cache-dir
pip3.9 install mmcv-full==1.4.0 -f https://download.openmmlab.com/mmcv/dist/cu111/torch1.9.0/index.html --no-cache-dir
ln -s ../detection/ops ./
cd ops
sh make.sh # compile deformable attention