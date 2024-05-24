kill -9 $(lsof -t /dev/nvidia*)
sleep 1s

# vit-comer-tiny
sh my_dist_train.sh configs/ade20k/upernet_vit_comer_tiny_512_160k_ade20k.py 3 --seed 2023

# vit-comer-small
#sh my_dist_train.sh configs/ade20k/upernet_vit_comer_small_512_160k_ade20k.py 3 --seed 2023

# vit-comer-base
#sh my_dist_train.sh configs/ade20k/upernet_vit_comer_base_512_160k_ade20k.py 3 --seed 2023

# loveda
#sh my_dist_train.sh configs/_base_/datasets/loveda.py 3 --seed 2023
