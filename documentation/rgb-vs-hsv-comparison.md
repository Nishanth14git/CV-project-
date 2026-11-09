# RGB vs HSV comparison

Both RGB and HSV colour spaces were tested on the supplied road image to identify the red sign border.

## RGB method

The red channel was compared with the green and blue channels using:

```matlab
R > 0.4
R > 1.3*G
R > 1.3*B
```

## HSV method

The image was converted to HSV and the mask used:

```matlab
(H < 0.05 | H > 0.95) & (S > 0.4) & (V > 0.2)
```

## Observed result

The project author's experiment notes state that, for this image and the selected thresholds, RGB provided a clearer representation of the red border and removed more unwanted white noise. RGB was therefore selected for the main detection pipeline.

## Conclusion

RGB was the better choice in this particular experiment. This does not establish that RGB is always better than HSV. Both approaches depend on lighting, image conditions and threshold selection, and should be compared on more images before making a general conclusion.
