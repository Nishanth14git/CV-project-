# Limitations and test cases

## Limitations observed or implied by the current approach

1. **Colour dependence:** RGB and HSV thresholding depend on colour values and threshold choices. Lighting and camera conditions can change the apparent red values.
2. **Red-object confusion:** the pipeline detects red-looking regions, not the semantic meaning of a traffic sign. Other red objects may become candidates.
3. **Geometry dependence:** area, width, height and aspect-ratio rules can reject signs that are small, distant, tilted or partly occluded.
4. **Canny output:** the demonstrated Canny result contains many road and vegetation edges in addition to the sign boundary.
5. **Single demonstrated example:** the supplied screenshots demonstrate one road photograph. They do not establish performance across a wider dataset.

## Suggested validation still to perform

- [ ] Far-away or small speed-limit signs.
- [ ] Signs viewed at different angles.
- [ ] Multiple speed-limit signs in one image.
- [ ] Images containing no speed-limit sign.
- [ ] Other red objects that could confuse the detector.
- [ ] Different lighting and background conditions.

## Optional extension

- [ ] Crop the detected sign and test MATLAB OCR.

The number "80" is visible in the supplied example image, but OCR recognition is not present in the supplied code or results.

## Failure analysis log

Add each tested image, its output screenshot, what the detector selected, and a reasoned explanation. Do not record hypothetical cases as observed failures.
