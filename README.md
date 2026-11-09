# Speed Limit Sign Detection using MATLAB

A MATLAB Computer Vision mini-project that detects the red border of a speed-limit sign in a road photograph and highlights a candidate with a bounding box.

**Demonstrated sample:** a road photograph containing a red-bordered **80** speed-limit sign.

## Project status

The core image-processing pipeline has been implemented by the project author and demonstrated in the supplied MATLAB screenshots. RGB and HSV colour masks were compared; RGB was selected for the main pipeline on the tested image because it produced a clearer red-border mask with fewer unwanted white regions.

The screenshots show the original image, RGB mask, HSV mask, Canny edges and a final green bounding box around the sign candidate.

## Implemented workflow

1. Load `road.png` and convert it to double precision using `im2double`.
2. Extract the R, G and B channels.
3. Create an RGB red mask using a red intensity threshold and comparisons against green and blue.
4. Create an HSV red mask for comparison.
5. Clean the RGB mask using morphological opening and closing with a disk structuring element.
6. Detect connected components using `bwconncomp`.
7. Measure area and bounding boxes using `regionprops`; derive width, height and aspect ratio.
8. Draw a green rectangle around candidate regions meeting the selected conditions.
9. Convert the input to grayscale and apply Canny edge detection.

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
│   ├── methodology.md
│   └── limitations.md
├── project-requirements/
│   └── project-brief.md
└── progress/
    └── learning-progress.md
```

## Run the MATLAB script

1. Open the repository folder in MATLAB.
2. Place the original colour road photograph in the project root and name it `road.png` (or update the filename in the script).
3. Run `MATLAB/speed_limit_sign_detection.m`.

The script uses MATLAB image-processing functions such as `imread`, `im2double`, `rgb2hsv`, `strel`, `imopen`, `imclose`, `bwconncomp`, `regionprops` and `edge`. The required toolbox availability depends on the MATLAB installation.

## Demonstrated results

See the screenshots in `results/masks/` and `results/detections/`. The original-image screenshot is stored under `images/input/`.

## Scope and limitations

- The RGB thresholds and geometric limits were selected for the demonstrated image; they are not universal values.
- The approach is based on colour and region geometry, not semantic sign understanding.
- Other red objects may produce false candidates.
- Lighting, distance and viewing angle may affect segmentation and candidate selection.
- Canny detects many scene boundaries, not only the sign.
- OCR has **not** been implemented in the supplied script; it remains an optional extension.
- Broader testing with distant, angled, multiple-sign and no-sign images remains to be documented.

## Learning and attribution

This repository records the author's implementation, experiments and screenshots. The code and parameters are preserved as supplied, with project documentation organised around the demonstrated work.
