# CV-project-
# 🚦 Speed Limit Sign Detection using MATLAB

## 📌 Project Overview

This project focuses on developing a Speed Limit Sign Detection System using MATLAB and fundamental Computer Vision techniques.

The objective is to analyse a road image, identify red speed-limit signs, highlight the detected sign using a bounding box and optionally recognise the speed limit displayed on the sign.

This project is part of my Computer Vision learning journey as a first-year Robotics and AI engineering student.

## 🎯 Objectives

- Load and explore road images.
- Analyse RGB colour channels.
- Detect red regions using RGB and HSV colour spaces.
- Apply image-processing and morphological operations.
- Identify candidate regions using connected components.
- Extract region properties such as area, width and height.
- Draw bounding boxes around detected signs.
- Explore Canny edge detection.
- Experiment with MATLAB OCR for speed-number recognition.

## 🛠️ Technologies Used

- MATLAB
- Image Processing Toolbox
- MATLAB OCR functionality (optional)

## ⚙️ Project Workflow

1. Image acquisition and RGB channel exploration.
2. Red-region segmentation using RGB and HSV.
3. Binary mask generation.
4. Noise removal and morphological processing.
5. Connected component analysis.
6. Candidate selection using region properties.
7. Bounding-box visualisation.
8. Canny edge detection.
9. Optional OCR-based number recognition.

## 📂 Repository Structure

```text
CV-project/
│
├── README.md
│
├── MATLAB/
│   └── Detection.m
│
├── images/
│
├── results/
│
├── documentation/
│
└── progress/
```

## 🧪 Testing Scenarios

The system will be evaluated using:

- Speed-limit signs at different distances.
- Signs viewed at different angles.
- Images containing multiple signs.
- Images without speed-limit signs.
- Images containing other red objects.

## 📊 Expected Results

The project aims to produce:

- Original road image.
- RGB channel visualisation.
- Red-region threshold mask.
- Cleaned binary mask.
- Detected sign with bounding box.
- Canny edge detection output.
- Optional OCR result.

## 📚 Learning Approach

The project will be developed incrementally, focusing on understanding each Computer Vision technique, experimenting with different approaches and analysing both successful and unsuccessful detections.

## 📌 Project Status

🚧 Initial setup and requirement analysis.

Implementation and testing will be added progressively.

---

**Project:** Speed Limit Sign Detection  
**Domain:** Computer Vision  
**Platform:** MATLAB  
**Field:** Robotics and Artificial Intelligence
