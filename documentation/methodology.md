# Methodology and experiment log

This document records the methods required or suggested by the project brief. Experimental conclusions must be filled in only after running the code on actual images.

## 1. Image and RGB exploration
Display the road photograph and its red, green and blue channels. Observe how colours and objects differ between channels.

## 2. Red-region segmentation
Compare two approaches:
- **RGB:** experiment with relationships between red, green and blue channel values.
- **HSV:** experiment with hue, saturation and value ranges to isolate red regions.

Red can occur near both ends of the hue range in common HSV representations, so check the range against the actual MATLAB conversion and image data. Record the ranges used rather than treating example values as universal.

## 3. Mask cleanup
Apply suitable image-processing and morphological operations to reduce isolated noise and improve the shape of candidate regions. Record each operation and its parameters.

## 4. Candidate identification
Label connected foreground components. Inspect region properties including area, width, height and bounding box. Select candidate regions using experimentally justified criteria.

## 5. Visualisation and edges
Draw the candidate bounding box on the original image. Apply Canny edge detection and save the result for visual inspection.

## 6. Optional OCR
Crop the detected sign and test MATLAB OCR. OCR may fail when the sign is small, blurred, angled, poorly illuminated or partially occluded.

## Experiment record template
For every experiment, record:
- Image filename
- Method (RGB or HSV) and thresholds/parameters
- Morphological operations and parameters
- Candidate measurements
- Observed result
- Failure or confusion (if any)
- What will be changed in the next experiment

## Best-performing approach
**Pending experiments.** Do not label RGB or HSV as the best method until both have been tested on the same set of images.
