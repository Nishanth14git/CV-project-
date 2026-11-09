# Speed Limit Sign Detection using MATLAB

A completed core Computer Vision mini-project that detects a red-bordered speed-limit sign in a road photograph using MATLAB image-processing techniques.

## Project objective

Detect a likely speed-limit sign in a road image, highlight it with a bounding box, and explore the main processing stages taught in the Computer Vision class. Reading the number with OCR was an optional bonus and is not included in the submitted script.

## Implemented workflow

1. Load the road image with `imread()` and convert it to double precision.
2. Extract and inspect the RGB colour channels.
3. Create an RGB red mask using relative channel thresholds.
4. Create an HSV red mask for comparison.
5. Clean the RGB mask using morphological opening and closing.
6. Find connected components and measure area and bounding boxes.
7. Use area, width, height and aspect ratio to select sign-like regions.
8. Draw a green bounding box around the selected candidate.
9. Convert the image to grayscale and apply Canny edge detection.

## Result on the supplied test image

The supplied photograph contains a red-bordered speed-limit sign displaying **80**. The final MATLAB screenshot shows a green bounding box around the sign. The user's comparison notes report that, for this image and the chosen thresholds, RGB segmentation gave a clearer red-border mask and suppressed more unwanted white noise than HSV.

This is a result for the supplied example, not a claim of general accuracy across all road scenes.

## Screenshots

See [results/README.md](results/README.md) for the original image, RGB mask, HSV mask, Canny result and final detection screenshot.

## Repository structure

```text
CV-project-/
├── README.md
├── project-requirements/
│   └── project-brief.md
├── MATLAB/
│   ├── README.md
│   └── speed_limit_sign_detection.m
├── images/
│   ├── input/
│   └── test/
├── results/
│   ├── masks/
│   ├── detections/
│   └── README.md
├── documentation/
│   ├── methodology.md
│   ├── limitations.md
│   └── rgb-vs-hsv-comparison.md
└── progress/
    └── learning-progress.md
```

## Tools

- MATLAB
- Image Processing Toolbox functions used in the script: `imread`, `im2double`, `imshow`, `rgb2hsv`, `strel`, `imopen`, `imclose`, `bwconncomp`, `regionprops`, `rectangle`, `rgb2gray` and `edge`.

## Current status

**Core detection workflow completed for the supplied example.** The MATLAB code and screenshots are based on the user's submitted work. The script has not been independently executed in this environment. OCR remains an optional, unimplemented extension. Testing on more images (distant, angled, multiple-sign, no-sign and confusing red-object cases) remains useful future work.
