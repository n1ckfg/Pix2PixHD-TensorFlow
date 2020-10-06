INPUT_DIR=files/input
MODEL_DIR=outputmodel
IMAGE_SIZE=512
GPU_ID=0

python main2.py --dataroot $INPUT_DIR --sample_st 0 --sample_ed 1 \
--batch_size 2 --frame_count 11 --resize_w $IMAGE_SIZE --resize_h $IMAGE_SIZE --mode test --checkpoint_name /data1/cuiqingli/Pix2PixHD-TensorFlow/checkpoints/model256_denseposeV4_mse --gpu_ids $GPU_ID \
--epoch_id_inference 6 --model_name $MODEL_DIR --need_resize True --crop_h_flag 20

