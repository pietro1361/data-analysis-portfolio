# Mobile Money Outliers in Global Financial Inclusion (2024)

## Assignment
This repository contains my revised research product for Problem Set 2, 
Question 3 in SIS 750: Data Analysis (American University, Spring 2026).

## Research Question
Which countries are statistical outliers in mobile money adoption and 
overall financial inclusion, and what geographic patterns emerge?

## Data
- **Source**: World Bank Global Findex Database 2025
- **Link**: https://www.worldbank.org/en/publication/globalfindex/download-data
- **Coverage**: 140+ countries, 2024 wave
- **Key variables**: 
  - `account_t_d`: Total account ownership (% of adults)
  - `mobileaccount_t_d`: Mobile money account ownership (% of adults)
  - `regionwb24_hi`: World Bank regional classification

## Approach
I filtered the 2024 country-level data to exclude regional aggregates, 
leaving 80 countries with complete mobile money data. I computed z-scores 
for both account ownership and mobile money adoption to identify extreme 
outliers (|z| > 2). The scatter plot reveals four quadrants: mobile-first 
inclusion (upper-left), broad inclusion (upper-right), low inclusion 
(lower-left), and traditional banking dominance (lower-right). Reference 
lines mark global averages, and eight extreme outliers are labeled.

## Files
| File | Description |
|------|-------------|
| `ps2_mobile_money_outliers.qmd` | Quarto script — fully reproducible |
| `ps2_mobile_money_outliers.pdf` | Final rendered output |
| `data/GlobalFindexDatabase2025.csv` | Replication data |

## Key Finding
Sub-Saharan African countries dominate both ends of the distribution: 
Kenya and Ghana are extreme positive outliers in mobile money, while 
Niger and Chad are extreme negative outliers in overall inclusion — 
revealing that geography alone cannot explain financial exclusion.