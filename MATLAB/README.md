# MATLAB implementation

## Main script

`speed_limit_sign_detection.m` is the repository-ready script based on the author's submitted MATLAB implementation.

## Input image

The script loads `images/input/original-road-image.jpg` relative to the script location, so it does not depend on MATLAB's current working directory.

## Figures produced

When run, the script is designed to display:
- Original image and its red, green and blue channels.
- RGB red mask.
- RGB and HSV mask comparison.
- Cleaned RGB mask after morphological operations.
- Final candidate detection with a green bounding box.
- Original image alongside Canny edge output.

## Methods and selected parameters

- RGB mask: `R > 0.4`, `R > 1.3*G`, `R > 1.3*B`.
- HSV comparison: red hue near either end of the hue range, `S > 0.4`, `V > 0.2`.
- Morphology: disk structuring element with radius 3; opening followed by closing.
- Candidate conditions: area > 1000, width > 30, height > 30, aspect ratio between 0.85 and 1.2.
- Edge detection: Canny on the grayscale image.

These are the selected experimental values for the supplied example, not universal thresholds.

## OCR

OCR is an optional bonus in the project brief. It is not included in the current script.
