# Project requirements — Speed Limit Sign Detection

## Source
The project brief supplied for the Computer Vision mini-project, titled "Speed Limit Sign Detection".

## Objective
Build a Speed Limit Sign Detection System using MATLAB. Given a road image, detect a speed-limit sign, highlight it with a bounding box and, if possible, read the speed limit displayed on it.

## Inputs
- A road photograph containing a possible speed-limit sign.
- Additional road photographs for testing different conditions.

The brief does not specify a mandatory dataset, image filename, image dimensions or fixed threshold values.

## Required tasks
1. **Load and explore the image:** display the road image and examine its RGB colour channels.
2. **Identify red regions:** experiment with RGB and HSV colour spaces to create a mask highlighting red parts of the image.
3. **Clean up the mask:** use image-processing and morphological operations to remove noise and improve detected regions.
4. **Identify the sign:** use connected components and region properties such as area, width and height to find a suitable sign candidate.
5. **Highlight the detection:** draw a bounding box around the detected speed-limit sign.
6. **Explore edge detection:** apply Canny edge detection and observe the boundaries.
7. **Bonus challenge:** crop the detected sign and try recognising the speed-limit number using MATLAB OCR functionality.

## Expected outputs
- Displayed original road image and RGB-channel exploration.
- Red-region mask(s) from RGB and/or HSV experiments.
- Cleaned mask.
- Selected sign candidate and its region measurements.
- Final image with a bounding box.
- Canny edge result.
- Optional OCR text from the cropped sign.

## Required submission
- MATLAB script.
- Screenshots showing the original image, thresholded mask, cleaned mask and final detection.
- A short explanation of the image-processing methods tried and which worked best.
- A successful detection example and, if possible, an example where the approach fails.

## Suggested challenge tests
- Signs that appear far away.
- Signs at different angles.
- Images containing multiple speed-limit signs.
- Images with no speed-limit signs.
- Other red objects that could confuse the detector.

## Scope and constraints from the brief
- Focus on getting detection working first.
- OCR is an additional challenge, not a requirement for the basic detector.
- The project is intended for learning and experimentation.
- Do not claim performance or results without actually testing the implementation.

## Not specified by the brief
No specific dataset, accuracy target, fixed HSV/RGB thresholds, required morphology structuring element, MATLAB release or report length is prescribed.
