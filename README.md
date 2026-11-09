# Speed Limit Sign Detection using MATLAB

A learning-focused Computer Vision mini-project that detects likely red speed-limit signs in road photographs using MATLAB.

## Objective
Given a road image, identify a likely speed-limit sign, highlight the candidate with a bounding box, and optionally read the displayed speed value using MATLAB OCR.

## Required workflow
1. Load and explore a road image; inspect its RGB colour channels.
2. Experiment with RGB and HSV colour spaces to create a mask for red regions.
3. Clean the mask using image-processing and morphological operations.
4. Use connected components and region properties (area, width and height) to identify a suitable candidate.
5. Draw a bounding box around the candidate.
6. Apply Canny edge detection and inspect the boundaries.
7. **Bonus:** crop the candidate and experiment with MATLAB OCR to read the speed value.

## Required submission
- MATLAB script.
- Screenshots of the original image, thresholded mask, cleaned mask and final detection.
- A short explanation of the methods tried and which worked best.
- A successful detection example and, if possible, a failure example.

## Suggested challenge tests
Try distant signs, angled signs, multiple signs, images without speed-limit signs and images containing other red objects that could confuse the detector.

## Repository map
```text
CV-project-/
├── README.md
├── project-requirements/
│   └── project-brief.md
├── MATLAB/
│   ├── README.md
│   └── 01_image_exploration.m
├── images/
│   ├── input/
│   └── test/
├── results/
│   ├── masks/
│   └── detections/
├── documentation/
│   ├── methodology.md
│   └── limitations.md
└── progress/
    └── learning-progress.md
```

## Tools
- MATLAB
- MATLAB image-processing and morphology functions available in the installed environment
- MATLAB OCR functionality for the optional bonus

## Development status
**Stage 0 — repository and requirement setup.** The first image-exploration exercise is provided as a starter script. The detection pipeline, threshold choices, screenshots and test results will be added and verified in stages. No detection accuracy or successful testing is claimed yet.

The aim is to understand each method, compare experiments and document where the approach works and fails.
