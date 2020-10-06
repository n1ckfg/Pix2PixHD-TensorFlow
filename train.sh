TRAIN_DIR=files/train
MODEL_DIR=outputmodel
IMAGE_SIZE=512
GPU_ID=0

python main2.py --dataroot $TRAIN_DIR --sample_st 1 --sample_ed 80 --num_epochs 10 \
--batch_size 2 --frame_count 11 --resize_w $IMAGE_SIZE --resize_h $IMAGE_SIZE --mode train --lr 0.0002 --model_name $MODEL_DIR --gpu_ids $GPU_ID

 


