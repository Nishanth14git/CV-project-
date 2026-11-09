# Speed Limit Sign Detection using MATLAB

A MATLAB Computer Vision mini-project that detects likely red speed-limit signs in road photographs and highlights candidates with a bounding box.

## Project status

The author has implemented and demonstrated the core image-processing pipeline on a road photograph containing an **80** speed-limit sign. The supplied screenshots show RGB and HSV masks, Canny edges and a final green bounding box.

For the tested image and selected thresholds, the RGB mask gave a clearer red-border mask with fewer unwanted white regions than the HSV mask. This result is image-specific, not a general claim that RGB is always better.

## Implemented workflow

1. Load `road.png` and convert it to double precision.
2. Extract R, G and B channels.
3. Create and compare RGB and HSV red masks.
4. Clean the RGB mask using morphological opening and closing with a disk structuring element of radius 3.
5. Find connected components using `bwconncomp`.
6. Measure area and bounding boxes using `regionprops`; derive width, height and aspect ratio.
7. Draw green bounding boxes around candidate regions meeting the chosen conditions.
8. Convert the image to grayscale and apply Canny edge detection.

## Repository structure

```text
CV-project-/
├── README.md
├── MATLAB/
│   ├── README.md
│   ├── 01_image_exploration.m
│   └── speed_limit_sign_detection.m
├── images/
│   ├── input/
│   └── test/
├── results/
│   ├── masks/
│   └── detections/
├── documentation/
├── project-requirements/
└── progress/
```

## Run the MATLAB script

1. Place the original colour input image in the project root as `road.png`, or update the filename in the script.
2. Open `MATLAB/speed_limit_sign_detection.m` in MATLAB.
3. Run the script.

The current script preserves the author's thresholds and region-selection conditions. They should be retested on additional images.

## Results

Expected screenshot files are documented in [results/README.md](results/README.md). The incorrect earlier JPG uploads have been removed. Corrected PNG crops are available in the image-corrections bundle shared in the project chat and need to be uploaded to the matching folders.

## Limitations and remaining work

- Thresholds were selected for one demonstrated image.
- Other red objects may be mistaken for signs.
- Lighting, distance and viewing angle may affect the masks.
- Canny detects scene boundaries, not sign meaning.
- Testing with distant, angled, multiple-sign, no-sign and confusing-red-object images remains pending.
- OCR is an optional extension and is not implemented in the supplied MATLAB script.

This repository documents the author's implementation and evidence. It does not claim general accuracy until more test images are evaluated.
