# MATLAB implementation

## Main script
`speed_limit_sign_detection.m` contains the submitted MATLAB implementation.

## Input image
The original script reads `road.png` from MATLAB's current working folder:

```matlab
I = imread('road.png');
```

Place the input image in the current folder before running the script, or update this line to the correct path. The actual road image file was not included in the supplied attachments; the original-image screenshot is stored in the results section.

## Implemented operations
- RGB thresholding and HSV thresholding comparison.
- Morphological opening and closing with a disk structuring element.
- Connected-component analysis.
- Area, bounding-box, width, height and aspect-ratio filtering.
- Green bounding-box visualisation.
- Canny edge detection on a grayscale image.

## Thresholds used in the submitted example
- RGB: `R > 0.4`, `R > 1.3*G`, `R > 1.3*B`.
- HSV: red hue near either end of the hue range, `S > 0.4`, `V > 0.2`.
- Morphology: disk structuring element with radius 3.
- Candidate: area > 1000, width > 30, height > 30, aspect ratio between 0.85 and 1.2.

These are the user's selected experimental values for the supplied image, not universal thresholds.

## Scope
OCR is not included in this script. It was specified as an optional bonus.
