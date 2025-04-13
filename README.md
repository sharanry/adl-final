## Instructions

1. Create a fresh conda environment and install pytorch and torchvision.
```bash
conda create -n comp0197-cw2-pt python=3.12 pip && 
conda activate comp0197-cw2-pt && 
pip install torch==2.5.0 torchvision
```

2. Install additional dependencies.
```bash
pip install omegaconf # for sam2
```

3. Download the oxford pets dataset and extract it.
```bash
bash ./load_oxfordpets.sh
```

4. Generate the SAM masks. Demonstrating with only first 10 samples. If you don't pass any args and it will run all samples
```bash
python generate_sam_mask_from_bounding_box.py --dataset_size 10 
```

5. Generate the CAM dataset.
```bash
python gen_cam_dataset.py
```

6. Train the models. Demonstrating with only 2 epochs. If you don't pass any args it will run for 50 epochs.
```bash
python train.py --baseline --epochs 2
```

```bash
python train.py --our-model --epochs 2
```
