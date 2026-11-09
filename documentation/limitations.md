# Limitations and failure analysis

The project brief specifically suggests testing difficult and confusing cases.

## Test cases to record
- Distant or small signs.
- Signs viewed at different angles.
- Multiple speed-limit signs in one image.
- Images containing no speed-limit sign.
- Other red objects that may be confused with a sign.

## General limitations to evaluate
- Colour segmentation can identify red regions but does not understand the semantic meaning of a road sign.
- Lighting, shadows, reflections, camera white balance and image compression can change apparent colour.
- A small or distant sign may produce too few useful pixels.
- Perspective distortion can change the apparent shape and dimensions.
- OCR may not read digits reliably from small, blurred or tilted crops.

These are possible failure modes to evaluate, not observed results from this project yet.

## Failure log
For each failure, attach the input image and output screenshot, describe what the detector selected, and state a hypothesis for why it failed. Update this document only after seeing the actual output.
