# SAM2 with only omegaconf as dependency
From https://github.com/Yeok-c/sam2/tree/minimal_dependencies
Which is a fork of https://github.com/facebookresearch/sam2 

Example use as seen in ```/workspace/adl-final/generate_sam_mask_from_bounding_box.py```

```python
    from sam2.sam2_image_predictor import SAM2ImagePredictor

    if not os.path.exists("./models"): os.makedirs("./models")
    # curl from <url> to ./models/sam2.pt
    if not os.path.exists("./models/sam2.pt"):
        print("Downloading SAM2 model...")
        import subprocess
        try:
            result = subprocess.run([
                "curl", "-L", "-o", "./models/sam2.pt",
                "https://www.dropbox.com/scl/fi/zttjbnyc9d85g191m3i2m/sam2.pt?rlkey=f19ttsgqpqdfhfpq1ktq3fkmt&st=wglxuapy&dl=1"
            ], check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            print("Download completed successfully.")
        except subprocess.CalledProcessError as e:
            print(f"Error downloading model: {e}")
            print(f"stderr: {e.stderr.decode()}")
            import sys
            sys.exit(1)

    sam2_model = torch.load("./models/sam2.pt", weights_only=False)

    predictor = SAM2ImagePredictor(sam2_model)

```