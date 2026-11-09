% Speed Limit Sign Detection using MATLAB
% Repository-ready version based on the author's submitted implementation.
% Reads the supplied example image from images/input.

clear;
clc;
close all;

% 1. Locate and load the original road image
scriptFolder = fileparts(mfilename('fullpath'));
projectRoot = fileparts(scriptFolder);
imagePath = fullfile(projectRoot, 'images', 'input', 'original-road-image.jpg');

if ~isfile(imagePath)
    error('Input image not found: %s', imagePath);
end

I = imread(imagePath);
I = im2double(I);

% 2. Extract RGB channels
R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);

% 3. Create the RGB red mask and HSV mask
redMask = R > 0.4 & ...
    R > 1.3*G & ...
    R > 1.3*B;

% Display the RGB red mask
figure;
imshow(redMask);
title('RGB Red Mask');

% HSV mask — comparison
hsvImage = rgb2hsv(I);
H = hsvImage(:,:,1);
S = hsvImage(:,:,2);
V = hsvImage(:,:,3);

hsvMask = (H < 0.05 | H > 0.95) & ...
    (S > 0.4) & ...
    (V > 0.2);

figure;
subplot(1,2,1);
imshow(redMask);
title('RGB Mask');

subplot(1,2,2);
imshow(hsvMask);
title('HSV Mask');

% 4. Clean the RGB mask (selected as better for the tested image)
se = strel('disk', 3);
cleanMask = imopen(redMask, se);
cleanMask = imclose(cleanMask, se);

% 5. Find connected components
CC = bwconncomp(cleanMask);

% 6. Measure each region
stats = regionprops(CC, 'Area', 'BoundingBox');

% 7. Draw bounding boxes around suitable candidates
figure;
imshow(I);
hold on;

for k = 1:CC.NumObjects
    area = stats(k).Area;
    box = stats(k).BoundingBox;

    width = box(3);
    height = box(4);
    ratio = width / height;

    if area > 1000 && ...
            width > 30 && ...
            height > 30 && ...
            ratio > 0.85 && ratio < 1.2

        rectangle('Position', box, ...
            'EdgeColor', 'g', ...
            'LineWidth', 2);

        title('Speed Limit Sign Detection');
    end
end

hold off;

% 8. Apply Canny edge detection
grayImage = rgb2gray(I);
edges = edge(grayImage, 'Canny');

figure;
subplot(1,2,1);
imshow(I);
title('Original Road Image');

subplot(1,2,2);
imshow(edges);
title('Canny Edge Detection');

% Note:
% The RGB/HSV thresholds and candidate geometry conditions were selected
% for the supplied example image. Test them on additional images before
% drawing conclusions about general performance.
