cat > report.md <<'MD'
---
title: "Neuroscience Report: <Short Study Title>"
author: "John"
date: "2026-01-16"
geometry: margin=1in
fontsize: 11pt
linestretch: 1.15
toc: true
numbersections: true
---

# Summary
**Question:**  
**Design:**  
**Main finding (1 sentence):**  

# Background
Write 3–8 bullets or a short paragraph. Include the core theory and what gap you’re addressing.

# Hypotheses
1. **H1:**  
2. **H2 (optional):**  

# Methods

## Subjects / Participants
- Species/strain or population:
- N:
- Inclusion/exclusion:
- Ethics:

## Apparatus / Materials
- Recording: (EEG, fiber photometry, behavior box, etc.)
- Software: (Python/MATLAB versions, packages)
- Key parameters: (sampling rate, filters, etc.)

## Procedure
1.  
2.  
3.  

## Outcome measures
- Primary:
- Secondary:
- Exploratory:

## Analysis plan
- Preprocessing:
- Statistical tests:
- Multiple comparisons:
- Effect sizes / CIs:
- Alpha:

# Results

## Descriptives
- Mean ± SD:
- Median (IQR):
- Notes on missing data/outliers:

## Main analysis
Report test(s), effect size, CI, p-value.

## Figures
(If you export figures to `figs/`, reference like below.)
![Example caption](figs/figure1.png)

## Table (example)
| Metric | Group A | Group B | Notes |
|---|---:|---:|---|
| Accuracy |  |  |  |
| RT (ms) |  |  |  |

# Discussion
- Interpretation:
- Alternative explanations:
- Limitations:
- Next experiment:

# Reproducibility
- Data location:
- Code location:
- Random seed:
- Environment/venv:

# References
- Add references here, or u
