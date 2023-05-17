# Analysis of gorilla microbiome and cortisol levels using BugSeq-er
## The main goal of this project is to robustly investigate relationships between gorilla microbiome composition and cortisol measurements using 16S fecal microbiome sequencing data and fecal cortisol measurements. This will be accomplished by three methods: 
- Integration of cortisol data into the previously developed [BugSeq-er pipeline](https://github.com/clayton-lab/BugSeq-er) for 16S data analysis.
- Development of a regression model for cortisol and alpha diversity levels determined using BugSeq-er.
- PERMANOVA analysis of cortisol and beta diversity levels determined using BugSeq-er.

## General overview
### BugSeq-er pipeline
![pipeline-overview](https://github.com/zalsafwani/thesis/blob/621d1302af242417919a21142b0ac8aa846ecc04/Microbiome%20Analysis%20Pipeline.png)
### Regression model
### PERMANOVA analysis

## Installation and analysis
### BugSeq-er
The BugSeq-er pipeline was developed to run using the HOLLAND COMPUTING CENTER (HHC) [Swan server](https://swan-ood.unl.edu/pun/sys/dashboard). Detailed steps for the pipeline's use in this analysis can be found [here](https://github.com/maiabennett/gorilla_cortisol_BugSeq-er/blob/main/steps.md). Currently, the only step which must be run locally is Step 4, which creates relative abundance plots (heatmap and barplot) using R and specific packages that are not currently supported by HCC.
### Regression
### PERMANOVA

## License
This repo uses the GNU General Public License v 3.0.
