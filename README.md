# Speed Limit Sign Detection using MATLAB

A MATLAB Computer Vision mini-project that detects a red-bordered speed-limit sign in a road photograph using colour segmentation, morphology, connected components and geometric filtering.

## Project objective

Detect a likely speed-limit sign in a road image, highlight it with a bounding box, and explore the image-processing techniques covered in the Computer Vision class. Recognising the number with OCR was an optional bonus and is not implemented in the submitted script.

## Implemented workflow

1. Load the road image and convert it to double precision.
2. Extract and display the RGB colour channels.
3. Create an RGB red mask using relative channel thresholds.
4. Create an HSV red mask for comparison.
5. Clean the RGB mask using morphological opening and closing.
6. Find connected components and measure area and bounding boxes.
7. Use area, width, height and aspect ratio to select sign-like regions.
8. Draw a green bounding box around the selected candidate.
9. Convert the image to grayscale and apply Canny edge detection.

## Result on the supplied test image

The supplied road photograph contains a speed-limit sign displaying **80**. The author's final MATLAB screenshot shows a green bounding box around the sign. The experiment notes report that RGB segmentation gave a clearer red-border mask and removed more unwanted white noise than HSV for this image and the selected thresholds.

This is evidence for the supplied example only, not a claim of general accuracy.

## Screenshots

See [results/README.md](results/README.md) for the supplied original image, RGB and HSV masks, Canny result and final detection. The updated MATLAB script also opens RGB-channel and cleaned-mask figures so those additional assignment screenshots can be captured.

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
│   ├── rgb-vs-hsv-comparison.md
│   └── limitations.md
└── progress/
    └── learning-progress.md
```

## Tools

- MATLAB
- Image Processing Toolbox functions used in the script: `imread`, `im2double`, `imshow`, `rgb2hsv`, `strel`, `imopen`, `imclose`, `bwconncomp`, `regionprops`, `rectangle`, `rgb2gray` and `edge`.

## Current status

The core detection pipeline has been implemented and a successful result is documented for the supplied example image. The repository script is based on the author's code and now also displays the RGB channels and cleaned mask required for the submission evidence. The updated script has not been independently run in this environment. OCR is still optional future work; broader challenge-image testing also remains.
