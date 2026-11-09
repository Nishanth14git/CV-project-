%% Speed Limit Sign Detection — Stage 1: Image Exploration
% Purpose:
%   Load one road photograph, display it, and inspect its RGB channels.
%
% Before running:
%   Place a colour road photograph at:
%   <project root>/images/input/road_image.jpg
%
% This is the first exercise only. Red segmentation and sign detection
% will be added after this stage is understood and reviewed.

clear;
clc;
close all;

%% 1. Locate the project image
scriptFolder = fileparts(mfilename('fullpath'));
projectRoot = fileparts(scriptFolder);
imagePath = fullfile(projectRoot, 'images', 'input', 'road_image.jpg');

if ~isfile(imagePath)
    error(['Image not found: %s\n' ...
           'Add a road photograph to images/input/ named road_image.jpg, ' ...
           'or edit imagePath in this script.'], imagePath);
end

%% 2. Read and validate the image
roadImage = imread(imagePath);

if ndims(roadImage) ~= 3 || size(roadImage, 3) ~= 3
    error('The input must be an RGB colour image with three channels.');
end

%% 3. Display the original image
figure('Name', 'Original Road Image');
imshow(roadImage);
title('Original Road Image');

%% 4. Separate the RGB channels
redChannel   = roadImage(:, :, 1);
greenChannel = roadImage(:, :, 2);
blueChannel  = roadImage(:, :, 3);

%% 5. Display each channel
figure('Name', 'RGB Channel Exploration');
subplot(2, 2, 1);
imshow(roadImage);
title('Original RGB Image');

subplot(2, 2, 2);
imshow(redChannel);
title('Red Channel');

subplot(2, 2, 3);
imshow(greenChannel);
title('Green Channel');

subplot(2, 2, 4);
imshow(blueChannel);
title('Blue Channel');

%% 6. Display basic image information
fprintf('Image file: %s\n', imagePath);
fprintf('Image height: %d pixels\n', size(roadImage, 1));
fprintf('Image width:  %d pixels\n', size(roadImage, 2));
fprintf('Number of channels: %d\n', size(roadImage, 3));
fprintf('Image class: %s\n', class(roadImage));

% Learning questions:
% 1. Which channel makes red parts of the image easiest to distinguish?
% 2. Are there non-sign objects that also appear bright in the red channel?
% 3. Why might a single colour channel not be enough to identify a sign?
