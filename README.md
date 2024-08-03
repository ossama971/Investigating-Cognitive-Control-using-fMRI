# Investigating Cognitive Control using fMRI: A Comprehensive Data Analysis Report

## Abstract

This report presents a detailed analysis of the Flanker Dataset using functional magnetic resonance imaging (fMRI) to explore the neural basis of cognitive control. The study focuses on investigating differences in the BOLD signal between Congruent and Incongruent Flanker trials. Various analyses, including quality control, preprocessing, statistical modeling, and post-analysis, were conducted using the FSL software. The findings contribute valuable insights into the neural mechanisms underlying cognitive control and response inhibition.

## Table of Contents

- [Introduction](#introduction)
- [Experimental Design](#experimental-design)
- [Data Collection](#data-collection)
- [Analysis](#analysis)
  - [Quality Control](#quality-control)
  - [Preprocessing](#preprocessing)
  - [First-Level Analysis](#first-level-analysis)
  - [Second-Level Analysis](#second-level-analysis)
  - [Third-Level Analysis](#third-level-analysis)
  - [ROI Analysis](#roi-analysis)
- [Results and Interpretation](#results-and-interpretation)
- [Discussion](#discussion)
- [Conclusion](#conclusion)
- [References](#references)
- [Submission](#submission)
- [Scripts](#scripts)


## Introduction

Cognitive control processes, particularly attention and response inhibition, were investigated using the Flanker Dataset and fMRI. This report details the experimental design, data collection procedures, and a comprehensive analysis pipeline.

## Experimental Design
![Flanker Task](assets/images/Flanker_Task.png)<br>
Figure 1, Flanker Task Trial

The Flanker task, a well-established paradigm for studying cognitive control, was employed. Participants were presented with Congruent and Incongruent Flanker trials, requiring a button press based on the central arrow's direction.

## Data Collection

Twenty-six adult participants underwent 2 fMRI runs while performing the Flanker task. High-resolution anatomical images and functional scans were acquired.

## Analysis
![Project Workflow](assets/images/Project_Workflow.png)<br>
Figure 1, Project Workflow

### Quality Control

Quality control procedures identified motion artifacts in specific subjects, addressing potential confounds in the subsequent analysis.

### Preprocessing

Anatomical and functional images underwent preprocessing steps, including brain extraction, temporal filtering, motion correction, smoothing, registration of functional to anatomical, and normalization to the MNI152 template.

### First-Level Analysis

The first-level analysis included GLM modeling with contrasts for congruent and incongruent conditions. Post-stats analysis identified activated pixels and clusters.

### Second-Level Analysis

Different algorithms, including Fixed Effect, Flame 1, and Simple OLS, were applied in the second-level analysis to determine the most effective approach "Fixed Effect".

### Third-Level Analysis

Whole-brain analysis was performed using Flame 1 based on the Fixed Effect algorithm.

### ROI Analysis

Regions of interest (ROIs) were identified and confirmed using a confirmation test to ensure the significance of the identified clusters.

## Results and Interpretation

### Lateral Occipital Cortex, Inferior Division
![Lateral Occipital Cortex, Inferior Division](assets/images/Lateral_Occipital_Cortex_Inferior_Division.png)<br>
Figure 2, Lateral Occipital Cortex, Inferior Division

- To decrease false positives, Eklund (2016) suggested accepting only P-values < 0.001.
- Lateral Occipital Cortex, Inferior Division: Associated with visual processing, object recognition, and scene perception.
- Flanker Task: Focuses on cognitive control. However, participants still engage early visual areas while processing visual stimuli.

### Lateral Occipital Cortex, Superior division
![Lateral Occipital Cortex, Superior Division](assets/images/Lateral_Occipital_Cortex_Superior_Division.png)<br>
Figure 3, Lateral Occipital Cortex, Superior Division

- Lateral Occipital Cortex, Superior division: Associated with visual motion information.
- Flanker Task: Focuses on cognitive control. However, participants still process visual motion information while processing visual stimuli.

### Precentral Gyrus
![Precentral Gyrus](assets/images/Precentral_Gyrus.png)<br>
Figure 4, Precentral Gyrus

- Precentral Gyrus: Associated with motor control and movement initiation.
- Flanker Task: Requires cognitive control. Participants inhibit responses, supported by regions like the dorsolateral prefrontal cortex, which communicate with the precentral gyrus for motor execution, emphasizing its role in response control.
- Acknowledged no direct task link, like activating dorsomedial prefrontal cortex.

## Discussion

The results revealed indirect relationships between confirmed clusters and the flanker task. The discussion interprets these findings in the context of existing literature and theoretical frameworks.

## Conclusion

Despite indirect relationships observed, the study provides valuable insights into the neural mechanisms underlying cognitive control and response inhibition during the Flanker task.

## References

Kelly, A.M., Uddin, L.Q., Biswal, B.B., Castellanos, F.X., Milham, M.P. (2008). Competition between functional brain networks mediates behavioral variability. Neuroimage, 39(1):527-37
- Soares JM, Magalhães R, Moreira PS, Sousa A, Ganz E, Sampaio A, Alves V, Marques P and Sousa N (2016) A Hitchhiker’s Guide to Functional Magnetic Resonance Imaging. Front. Neurosci. 10:515. doi: 10.3389/fnins.2016.00515
- AndysBrainBook website (https://andysbrainbook.readthedocs.io/en/latest/)
