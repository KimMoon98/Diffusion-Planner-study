export CUDA_VISIBLE_DEVICES=0

###################################
# User Configuration Section
###################################
RUN_PYTHON_PATH="/home/fanhang/miniconda3/envs/diffusion_planner/bin/python" # python path (e.g., "/home/xxx/anaconda3/envs/diffusion_planner/bin/python")

# Set training data path
TRAIN_SET_PATH="/home/fanhang/planning/Diffusion-Planner-study/dataset/processed_data" # preprocess data using data_process.sh
TRAIN_SET_LIST_PATH="/home/fanhang/planning/Diffusion-Planner-study/diffusion_planner_training.json"
###################################

sudo -E $RUN_PYTHON_PATH -m torch.distributed.run --nnodes 1 --nproc-per-node 1 --standalone train_predictor.py \
--train_set  $TRAIN_SET_PATH \
--train_set_list  $TRAIN_SET_LIST_PATH \

