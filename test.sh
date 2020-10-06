INPUT_DIR=files/input
MODEL_DIR=outputmodel

python main2.py --dataroot $INPUT_DIR --sample_st 0 --sample_ed 1 \
--batch_size 2 --frame_count 11 --resize_w 256 --resize_h 256 --mode test --checkpoint_name /data1/cuiqingli/Pix2PixHD-TensorFlow/checkpoints/model256_denseposeV4_mse --gpu_ids 6 \
--epoch_id_inference 6 --model_name $MODEL_DIR --need_resize True --crop_h_flag 20

