# An analysis of gorilla microbiome and cortisol levels using BugSeq-er.
## The main goal of this project is to robustly investigate relationships between gorilla microbiome composition and cortisol measurements using 16S fecal microbiome sequencing data and fecal cortisol measurements. This will be accomplished by four methods: 
- Integration of cortisol data into the previously developed [BugSeq-er pipeline](https://github.com/clayton-lab/BugSeq-er) for 16S data analysis.
- Threshold analysis (TITAN2) of cortisol and taxa abundance determined using BugSeq-er.
- Regression analysis of cortisol and alpha diversity levels determined using BugSeq-er.
- PERMANOVA analysis of cortisol and beta diversity levels determined using BugSeq-er.

## General overview
### BugSeq-er pipeline
![pipeline-overview](https://github.com/zalsafwani/thesis/blob/621d1302af242417919a21142b0ac8aa846ecc04/Microbiome%20Analysis%20Pipeline.png)
### TITAN2
### Regression model
### PERMANOVA analysis

## Installation and implementation
### Cortisol clustering
Prior to implementation of BugSeq-er and other analyses, cortisol (fGCM) levels were clustered for all data, per institution, and per individual. K-means clustering was conducted using [this file](https://github.com/maiabennett/gorilla_cortisol/blob/main/clustering/cortisol_kmeans.R). After clustering, the outputted CortGroups were re-assigned in ascending order within the relevant metadata file(s). 
### BugSeq-er QIIME2 analysis
The BugSeq-er pipeline was developed to run using the HOLLAND COMPUTING CENTER (HHC) [Swan server](https://swan-ood.unl.edu/pun/sys/dashboard). Detailed steps for the pipeline's use in this analysis can be found [here](https://github.com/maiabennett/gorilla_cortisol/blob/main/steps.md). Currently, the only step which must be run locally is Step 4, which creates relative abundance plots (heatmap and barplot) using R and specific packages that are not currently supported by HCC.
### TITAN2 threshold analysis
The TITAN2 package was developed to run in R. A general overview of the package can be found [here](https://rdrr.io/cran/TITAN2/f/vignettes/titan2-intro.Rmd). TITAN2 analysis for this project was conducted using [this file](https://github.com/maiabennett/gorilla_cortisol/blob/main/TITAN2/cortisol_titan.R).
### Alpha diversity regression
The stat package and all dependent functions, including linear regression function lm(), were developed to run in R. A general overview of the function can be found [here](https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/lm). Linear regression analysis for this project was conducted using [this file](https://github.com/maiabennett/gorilla_cortisol/blob/main/alpha-regression/cortisol_lm.R).
### Beta diversity PERMANOVA
The vegan package and all dependent functions were developed to run in R. A general overview of the package can be found [here](https://cran.r-project.org/web/packages/vegan/vegan.pdf). PERMANOVA analysis of beta diversity for this projecy was conducted using [this file](https://github.com/maiabennett/gorilla_cortisol/blob/main/PERMANOVA/cortisol_permanova.R).

## License
This repo uses the GNU General Public License v 3.0.
