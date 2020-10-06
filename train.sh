TRAIN_DIR=files/train
MODEL_DIR=outputmodel

python main2.py --dataroot $TRAIN_DIR --sample_st 1 --sample_ed 80 --num_epochs 10 \
--batch_size 2 --frame_count 11 --resize_w 512 --resize_h 512 --mode train --lr 0.0002 --model_name $MODEL_DIR --gpu_ids 0
 


