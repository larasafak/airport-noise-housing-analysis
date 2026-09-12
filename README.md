# Airport Noise and Housing Market Analysis

## Overview

This project investigates whether airport noise and proximity are associated with residential property values around Salinas and Watsonville airports. It combines Zillow property estimates with Community Noise Equivalent Level (CNEL), distance, property size, age, and neighbourhood data.

The analysis demonstrates an important data-visualisation problem: the pooled data show a positive correlation between noise and property value, but the relationship is driven by differences between the two markets. Once Salinas and Watsonville are examined separately, both show only a weak negative relationship between noise and value.

## Business Question

Pitchard Development Company is considering a residential development near a municipal airport. The analysis asks whether noise or airport proximity could materially affect property values and which factors are more relevant to the investment decision.

## Key Findings

- The cleaned analysis covers **2,119 properties** across Salinas and Watsonville.
- The pooled noise-price correlation is **r = 0.324**, but this result reflects cross-market differences.
- Within each airport market, the correlations are weakly negative: **r = -0.088** in Salinas and **r = -0.089** in Watsonville.
- Airport distance has little association with property value in either market.
- Square footage shows the strongest positive relationship with value.
- Newer properties and homes in Watsonville generally command higher prices.

## Business Interpretation

The findings suggest that airport noise and proximity are unlikely to be the main constraints on the proposed development. Unit size, design quality, neighbourhood positioning, zoning, and project economics are more important considerations. The results support further investigation of the site, but they do not replace detailed valuation or financial feasibility work.

## Repository Structure

```text
airport-noise-housing-analysis/
├── README.md
├── requirements.R
├── airport_noise_housing_analysis.Rmd
├── airport_housing_market_analysis_presentation.pptx
```

## Methods

- Data cleaning and validation
- Market-level descriptive statistics
- Distribution and scatterplot analysis
- Pooled and within-market correlations
- Noise Depreciation Index comparison
- Confounder analysis covering property size, age, bedrooms, and neighbourhood

## Running the Analysis

Install the required R packages:

```r
source("requirements.R")
```

Place an authorised copy of the source workbook at `data/real_estate.xlsx`, then open and knit `airport_noise_housing_analysis.Rmd`.

## Data Availability

The source workbook is not included because it was provided as academic case material and redistribution rights are unclear. The report and presentation retain the analytical results for review.

## Limitations

- The dataset is observational, so the analysis identifies associations rather than causal effects.
- Salinas has substantially more observations than Watsonville.
- Few properties fall within the highest noise bands, which limits the precision of NDI comparisons.
- CNEL values come from modelled contours rather than property-level indoor measurements.
- The analysis does not include construction costs, planning constraints, financing, or projected development returns.

## Tools

R, tidyverse, ggplot2, readxl, corrplot, GGally, kableExtra, and R Markdown.

## Author

Lara Gunseli Safak
