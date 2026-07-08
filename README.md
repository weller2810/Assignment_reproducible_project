# Reproducible Research Project – KODAQS Course Assignment

> **Note:** Due to administrative restrictions on my work computer, I was not able to use Git locally. Therefore, the project files were uploaded to GitHub via the GitHub web interface instead of using the Git command line.

## Project Description

This project was created as part of the KODAQS Academy course *Modern Tools and Workflows for Data Quality*. Its purpose is to demonstrate a transparent and reproducible research workflow using R.

The project uses the publicly available Gapminder dataset to calculate the average life expectancy by continent over time and to visualize the results.

## Project Structure

```
Assignment_reproducible_project/
│
├── data/
│   └── raw/
│       └── gapminder.csv
│
├── code/
│   └── analysis.R
│
├── output/
│   ├── average_life_expectancy_by_continent.csv
│   └── life_expectancy_by_continent.png
│
├── docs/
│   └── sessionInfo.txt
│
├── README.md
├── run.sh
└── .gitignore
```

## Data

This project uses the publicly available **Gapminder** dataset.

**Source**

https://github.com/resbaz/r-novice-gapminder-files

The dataset contains information on:

- Country
- Continent
- Year
- Life expectancy
- Population
- GDP per capita

## Software Requirements

The project was developed using:

- R (Version 4.x)
- Base R packages

No additional R packages are required.

## Running the Analysis

Open the project in R or RStudio and run:

```r
source("code/analysis.R")
```

Alternatively, execute:

```bash
./run.sh
```

The script will:

1. Load the Gapminder dataset.
2. Calculate the average life expectancy by continent and year.
3. Save the results as a CSV file.
4. Create a PNG figure showing the average life expectancy over time.

## Output

The analysis generates the following files:

- `output/average_life_expectancy_by_continent.csv`
- `output/life_expectancy_by_continent.png`

## Reproducibility

This project follows the principles of reproducible research by providing:

- a clear project structure,
- publicly available data,
- documented analysis code,
- automatically generated output files,
- a shell script (`run.sh`) to reproduce the complete analysis,
- documentation of the computational environment.

## Computational Environment

The project was developed using **R**. Information about the R version, operating system, locale and attached packages is documented in:

```
docs/sessionInfo.txt
```

This file was generated using the following R command:

```r
sessionInfo()
```

## Author

**Sabrina Weller**

KODAQS Academy – Modern Tools and Workflows for Data Quality

2026