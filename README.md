# pix2pixHD-TF
A minimal tensorflow implementation of pix2pixHD (https://tcwang0509.github.io/pix2pixHD/).
my codes started from original pix2pix implementation based on https://github.com/prashnani/pix2pix-tensorflow


# Setup

This code has been tested to work on the following environment:
- Ubuntu 14.04
- Tensorflow 1.4
- Python  3.6(Numpy, Scikit-image)
- Cuda 8.0, CuDNN 7.0

1. Clone this repository:
```
git clone https://github.com/tiandiao123/Pix2PixHD-TensorFlow
cd Pix2PixHD-TensorFlow
```
2. Dataset is not shared in public, but you can create a data set for yourself to train this Pix2PixHD model, there is many great data set online such as facades. 

3. Train 
```
python main2.py --dataroot /data1/cuiqingli/data/render_v5/denseposeV4_512 --sample_st 1 --sample_ed 80 --num_epochs 10 \
--batch_size 2 --frame_count 11 --resize_w 512 --resize_h 512 --mode train --lr 0.0002 --model_name model512_denseposeV4_mse_0611 --gpu_ids 0  
```

4. Test
```
python main2.py --dataroot /data1/cuiqingli/app4_v2_1sec/result --sample_st 0 --sample_ed 1 \
--batch_size 2 --frame_count 11 --resize_w 256 --resize_h 256 --mode test --checkpoint_name /data1/cuiqingli/Pix2PixHD-TensorFlow/checkpoints/model256_denseposeV4_mse --gpu_ids 6 \
--epoch_id_inference 6 --model_name model256_dneseposeV4_app4_v2_lsec --need_resize True --crop_h_flag 20
```
5. Convert images into videos:
```
python convert_video.py --sample_st 81 --sample_ed 82 --pred_folder /data1/cuiqingli/Pix2PixHD-TensorFlow/infer_res/model256_dneseposeV4_mse --resolution 256
```
6. quantize model (post quantization which means quantizing trained float model) and inference by quantized model
```
python model_quant.py --dataroot='./datasets/' --model='quant' --batch_size = 2 --sample_st = 91 --sample_ed = 91 --epoch_id_inference = 9 \
--model_name = 'model256_denseposeV4_mse_0610' --checkpoint_name = './checkpoints/model256_denseposeV4_mse_0610/'  --infer_out_root ='/infer_res'
```

