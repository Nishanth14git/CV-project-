# Project progress

## Project objective

Detect a likely red-bordered speed-limit sign in a road photograph using MATLAB, draw a bounding box and explore Canny edges. Reading the displayed number with OCR is an optional bonus.

## Completed core work (based on the submitted script and screenshots)

- [x] Load the road image with `imread()` and convert it with `im2double()`.
- [x] Extract RGB channels for analysis.
- [x] Create an RGB red-region mask.
- [x] Create an HSV mask for comparison.
- [x] Compare RGB and HSV; select RGB for the supplied example.
- [x] Apply morphological opening and closing.
- [x] Find connected components.
- [x] Measure area and bounding boxes using `regionprops()`.
- [x] Filter candidates using area, width, height and aspect ratio.
- [x] Draw a green bounding box around the sign candidate.
- [x] Apply Canny edge detection to the grayscale image.
- [x] Capture and add the original image, RGB mask, HSV mask, final detection and Canny screenshots to the repository.
- [x] Document the methodology, comparison and limitations.

## Final evidence to capture from the updated script

- [ ] RGB channel exploration screenshot.
- [ ] Cleaned RGB mask screenshot.

The repository script was updated to display both of these outputs because they are specifically requested in the project submission checklist. Run the updated script in MATLAB and add these two screenshots to `results/`.

## Optional / future work

- [ ] Add MATLAB OCR to a crop of the sign (bonus; not in the submitted script).
- [ ] Test distant and angled signs.
- [ ] Test images with multiple signs.
- [ ] Test images with no speed-limit sign.
- [ ] Test confusing red objects and document a failure case if one occurs.

## Current status

**Core detection implemented; one-image result documented.** The repository code is based on the author's submitted implementation. The repository-ready version has additional display windows for the RGB channels and cleaned mask; it has not been independently executed in this environment.
