# Mobile Money and the Gender Gap in Financial Inclusion

## Assignment
This repository contains my revised research product for Problem Set 4 
in SIS 750: Data Analysis (American University, Spring 2026).

## Research Question
Does mobile money access help close the gender gap in financial inclusion?

## Data
- **Source**: World Bank Global Findex Database 2025
- **Link**: https://www.worldbank.org/en/publication/globalfindex/download-data
- **Coverage**: 152 countries, 2024 wave
- **Unit of analysis**: Country-level averages by gender
- **Key variables**: 
  - `account_t_d_men`, `account_t_d_women`: Account ownership by gender
  - `mobileaccount_t_d_women`: Mobile money adoption among women
  - `gender_gap`: Men's minus women's account ownership (percentage points)
  - `incomegroupwb24`: World Bank income classification

## Approach
I constructed three datasets from the raw Findex data: (1) country-level 
aggregates for regional boxplots, (2) gender breakdowns, and (3) a pivoted 
dataset with one row per country computing the gender gap. I visualized 
regional variation in account ownership, examined the correlation between 
mobile money adoption and the gender gap using a scatter plot with labeled 
outliers, and ran an OLS regression controlling for income groups. The 
analysis uses a consistent visual theme with readable text throughout.

## Files
| File | Description |
|------|-------------|
| `ps4_mobile_money.qmd` | Quarto script — fully reproducible |
| `ps4_mobile_money.pdf` | Final rendered slide deck |
| `data/GlobalFindexDatabase2025.csv` | Replication data |

## Key Finding
Mobile money shows a negative but marginally significant association with 
the gender gap (p = 0.089), but the effect is modest. Structural barriers 
beyond income and mobile access — legal rights, education, social norms — 
likely drive the persistent gap across most regions.