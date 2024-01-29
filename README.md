# Univariate-scale-test-UST
Univariate scale test (UST) for detecting gene-gene interactions or gene-environment interactions 

########################################################################################## If you use this code to analyze data, please cite the following paper: Lin W-Y* (2024). Searching for gene-gene interactions through variance quantitative trait loci of 29 continuous Taiwan Biobank phenotypes. Frontiers in Genetics.  Any questions or comments, please contact: Wan-Yu Lin, Institute of Health Data Analytics and Statistics, National Taiwan University College of Public Health. Thank you. ##########################################################################################

The R code to implement Univariate scale test (UST) (file name: "UST.R")

Example data (file name: "USTexampledata.csv")

Suppose you save the source code and the example data under the D disk.

source("D:/UST.R")

aa <- read.csv("D:/USTexampledata.csv")

MST(aa[,1], aa[,2:5], aa[,6:ncol(aa)]) # Traits Covariates SNPs

Output: Beta, standard error, t-statistic, p-value of quantitative trait locus (QTL), and p-value of variance quantitative trait locus (vQTL).

Thanks for your interest.
