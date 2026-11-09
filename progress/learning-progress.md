# Project progress

## Project objective

Detect a speed-limit sign in a road photograph using MATLAB, highlight the candidate with a bounding box and optionally read the speed value using OCR.

## Completed implementation stages

- [x] Load the road image using `imread`.
- [x] Convert the image using `im2double`.
- [x] Extract RGB channels.
- [x] Create an RGB red mask using channel thresholds.
- [x] Create an HSV red mask for comparison.
- [x] Compare RGB and HSV masks on the supplied image.
- [x] Select RGB for the main pipeline on the demonstrated image based on the clearer mask and lower unwanted white noise.
- [x] Apply morphological opening and closing with a disk structuring element.
- [x] Find connected components using `bwconncomp`.
- [x] Measure area and bounding box using `regionprops`.
- [x] Derive width, height and aspect ratio for candidate selection.
- [x] Draw a green bounding box around the demonstrated speed-limit sign.
- [x] Apply Canny edge detection.
- [x] Record methodology and limitations.
- [x] Capture screenshots of the original image, RGB mask, HSV mask, Canny edges and final detection.

## Remaining work

- [ ] Test on distant or small signs.
- [ ] Test signs at different angles.
- [ ] Test images with multiple signs.
- [ ] Test images with no speed-limit signs.
- [ ] Test images containing other red objects.
- [ ] Record a successful and, if possible, a failure example from additional images.
- [ ] Optional: crop the detected sign and test MATLAB OCR.
- [ ] Prepare final submission explanation and viva questions.

## Current status

**Core pipeline implemented and demonstrated on one supplied road image.** The screenshots were supplied by the project author. The repository upload does not independently execute MATLAB, so the script has not been run or verified in this environment.

## Verification rule

A task is marked complete when supported by the supplied code and/or actual output screenshots. Broader test cases and OCR remain pending until performed.
