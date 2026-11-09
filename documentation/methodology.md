# Methodology and experiment results

This document records the methods used in the supplied MATLAB implementation and the observations visible in the submitted screenshots.

## 1. Image loading and RGB exploration

The road image is loaded using `imread('road.png')` and converted to double precision using `im2double`. The red, green and blue channels are extracted using array indexing.

## 2. Red-region detection: RGB and HSV comparison

### RGB method

The red mask is created using the conditions:

```matlab
redMask = R > 0.4 & ...
    R > 1.3*G & ...
    R > 1.3*B;
```

This selects pixels where the red channel is above 0.4 and sufficiently stronger than both green and blue.

### HSV method

The image is converted using `rgb2hsv`. The mask uses hue near either end of the hue interval, together with saturation and value thresholds:

```matlab
hsvMask = (H < 0.05 | H > 0.95) & ...
    (S > 0.4) & ...
    (V > 0.2);
```

### Observed comparison

Both colour spaces were tested. For the selected road image and chosen thresholds, the RGB mask gave a clearer representation of the red sign border and removed more unwanted white noise. RGB was therefore selected for the main detection pipeline. The screenshots show that both masks isolate the circular red border, with a small residual foreground speck visible in the displayed masks.

This conclusion is specific to the tested image and thresholds; it does not establish that RGB is always better than HSV.

## 3. Morphological operations

A disk structuring element of radius 3 is created using `strel('disk', 3)`. Morphological opening (`imopen`) is applied first, followed by closing (`imclose`).

The stated purpose is to remove small unwanted regions and fill small gaps or connect nearby pixels.

## 4. Connected components and region properties

The cleaned mask is passed to `bwconncomp`. `regionprops` measures each component's `Area` and `BoundingBox`.

The script derives:
- Width from the third bounding-box element.
- Height from the fourth bounding-box element.
- Aspect ratio as width divided by height.

## 5. Candidate selection and bounding box

A candidate is drawn when it satisfies all the implemented conditions:
- Area greater than 1000 pixels.
- Width greater than 30 pixels.
- Height greater than 30 pixels.
- Aspect ratio greater than 0.85 and less than 1.2.

The `rectangle` function draws the candidate box in green with line width 2. The supplied final screenshot shows a green bounding box around the red-bordered 80 sign.

## 6. Canny edge detection

The RGB image is converted to grayscale using `rgb2gray`, then Canny edges are calculated using `edge(grayImage, 'Canny')`.

The supplied edge screenshot shows the sign's circular boundary and the digits, along with many edges from the road, vegetation and other scene details. Canny reveals boundaries but does not independently identify which boundary is a speed-limit sign.

## 7. Optional OCR

The supplied MATLAB script does not include OCR. The displayed sign contains the number 80, but the submitted materials do not demonstrate an OCR result. OCR remains a bonus extension.
