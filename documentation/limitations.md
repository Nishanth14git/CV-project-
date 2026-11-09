# Limitations and future testing

## Limitations identified in the project notes

- The detector relies mainly on colour and geometric properties.
- Other red objects may satisfy the same conditions and be incorrectly detected.
- Lighting changes may affect the colour thresholds.
- Distance and viewing angle may affect the result.

## What the supplied example demonstrates

The submitted screenshot shows one successful bounding-box detection around a red-bordered sign displaying 80. The Canny result also contains many edges from vegetation, the road and other objects in the scene, not only the sign.

## Tests still worth doing

The assignment suggests testing:
- Signs that are far away.
- Signs viewed at different angles.
- Images containing multiple speed-limit signs.
- Images without a speed-limit sign.
- Images containing other red objects.

The repository currently contains evidence for the supplied example only. Results for these additional cases should be added only after they are run.

## OCR scope

The project brief describes OCR as a bonus. The supplied script does not contain an OCR step, so OCR remains an optional future extension.
