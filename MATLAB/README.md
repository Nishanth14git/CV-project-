# MATLAB implementation

## Main script

`speed_limit_sign_detection.m` contains the supplied speed-limit sign detection pipeline.

### Input

The original script reads `road.png` from the current MATLAB working folder. Place your original colour road image there, or edit the filename in the script.

### Pipeline

1. Load and convert the image to double precision.
2. Extract RGB channels.
3. Create RGB and HSV red masks.
4. Compare the masks; the author selected RGB for the demonstrated image.
5. Clean the RGB mask using morphological opening and closing.
6. Find connected components.
7. Measure component area and bounding box.
8. Derive width, height and aspect ratio and draw green boxes for candidates that meet the chosen thresholds.
9. Convert to grayscale and apply Canny edge detection.

### First exploration script

`01_image_exploration.m` is an initial RGB channel exploration exercise. The more complete supplied implementation is in `speed_limit_sign_detection.m`.

### Important

The script preserves the author's selected thresholds and candidate conditions. These are image-specific starting values and should be retested on additional photographs. OCR is not included in this version.
