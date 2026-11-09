# Project progress

## Project objective
Detect a likely red-bordered speed-limit sign in a road photograph using MATLAB, draw a bounding box and explore Canny edges. Reading the sign value with OCR is an optional bonus.

## Completed core work (based on the submitted script and screenshots)
- [x] Load the road image with `imread()` and convert it with `im2double()`.
- [x] Extract RGB channels.
- [x] Create an RGB red-region mask.
- [x] Create an HSV mask for comparison.
- [x] Compare RGB and HSV; select RGB for the supplied example.
- [x] Apply morphological opening and closing.
- [x] Find connected components.
- [x] Measure area and bounding boxes using `regionprops()`.
- [x] Filter candidates using area, width, height and aspect ratio.
- [x] Draw a green bounding box around the candidate.
- [x] Apply Canny edge detection to the grayscale image.
- [x] Capture screenshots of the original image, RGB mask, HSV mask, final detection and Canny result.
- [x] Write the method explanation and RGB-vs-HSV comparison.

## Optional / future work
- [ ] Add MATLAB OCR to the cropped sign (bonus; not in the submitted script).
- [ ] Test distant and angled signs.
- [ ] Test images with multiple signs.
- [ ] Test images with no speed-limit sign.
- [ ] Test confusing red objects and document a failure case if one occurs.

## Current status
**Core mini-project completed for the supplied road-image example.** The attached implementation and screenshots are the evidence for this status. The script has not been independently executed in this environment; testing claims are based on the user's supplied run screenshots and notes.
