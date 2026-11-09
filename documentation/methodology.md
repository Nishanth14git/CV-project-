# Methodology and implementation details

This document records the workflow in the submitted MATLAB script and the observations from the supplied road photograph.

## 1. Image loading and exploration

The road image is loaded using `imread()` and converted using `im2double()`. The RGB channels are separated as `R`, `G` and `B` for colour analysis.

## 2. RGB red-region segmentation

The script creates the binary mask using:

```matlab
redMask = R > 0.4 & R > 1.3*G & R > 1.3*B;
```

This requires the red channel to be above 0.4 and stronger than both the green and blue channels by the selected ratio.

## 3. HSV comparison

The image is converted using `rgb2hsv()`. The HSV mask is:

```matlab
hsvMask = (H < 0.05 | H > 0.95) & ...
    (S > 0.4) & ...
    (V > 0.2);
```

The low- and high-hue ranges cover red near the hue wrap-around. The submitted comparison notes state that RGB produced the clearer result on the selected image and reduced more unwanted white noise.

## 4. Morphological cleanup

The script creates a disk structuring element with radius 3:

```matlab
se = strel('disk', 3);
cleanMask = imopen(redMask, se);
cleanMask = imclose(cleanMask, se);
```

Opening is used to remove small foreground noise; closing is used to close small gaps in the foreground region.

## 5. Connected components and candidate measurements

The cleaned mask is labelled using `bwconncomp()`. `regionprops()` measures `Area` and `BoundingBox`. Width and height are read from the bounding box, and the aspect ratio is calculated as width divided by height.

The script accepts regions satisfying all the following conditions:

- Area greater than 1000 pixels.
- Width greater than 30 pixels.
- Height greater than 30 pixels.
- Aspect ratio greater than 0.85 and less than 1.2.

These are the thresholds used in the submitted example; they are not universal values for every image.

## 6. Bounding-box visualisation

For each candidate satisfying the conditions, `rectangle()` draws a green bounding box on the original image.

## 7. Canny edge detection

The image is converted to grayscale using `rgb2gray()`, then processed using:

```matlab
edges = edge(grayImage, 'Canny');
```

The supplied edge screenshot shows the sign boundary and digit contours, as well as edges from vegetation, road features and other scene content.

## 8. OCR

OCR was a bonus challenge in the assignment. The submitted MATLAB script does not implement OCR, so number recognition is not claimed as a completed software feature. The speed value 80 is visible in the supplied original photograph.
