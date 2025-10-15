###################################
# User Configuration Section
###################################
NUPLAN_DATA_PATH="/home/fanhang/planning/Diffusion-Planner-study/dataset/nuplan-v1.1/trainval" # nuplan training data path (e.g., "/data/nuplan-v1.1/trainval")
NUPLAN_MAP_PATH="/home/fanhang/planning/Diffusion-Planner-study/dataset/maps" # nuplan map path (e.g., "/data/nuplan-v1.1/maps")

TRAIN_SET_PATH="/home/fanhang/planning/Diffusion-Planner-study/dataset/processed_data" # preprocess training data
###################################

python data_process.py \
--data_path $NUPLAN_DATA_PATH \
--map_path $NUPLAN_MAP_PATH \
--save_path $TRAIN_SET_PATH \
--total_scenarios 10000 \

