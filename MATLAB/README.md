# MATLAB implementation

This folder contains the MATLAB scripts developed for the project.

## Development order
1. `01_image_exploration.m` — load one road photograph, display it and inspect its RGB channels.
2. RGB red-region segmentation.
3. HSV red-region segmentation and comparison.
4. Mask cleanup and morphological experiments.
5. Connected-component measurements and candidate selection.
6. Bounding-box visualisation.
7. Canny edge exploration.
8. Optional OCR on a crop of a detected sign.

## Run the first exercise
1. Put a suitable colour road photograph in `images/input/`.
2. Name it `road_image.jpg`, or update the filename in the script.
3. Run `01_image_exploration.m` from this folder.

The script is only the first learning stage. The complete detection pipeline has not been implemented yet.
