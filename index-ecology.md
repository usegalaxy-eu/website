---
layout: subsite-galaxy
---

Welcome to **Galaxy for Ecology** -- a web platform to get, process, analyze and visualize ecological data

<img src="/assets/media//Galaxy-E-concarneau-team-2018-logo.gif" height="500px" alt="2018 Concarneau Galaxy-E team"/>


1. TOC
{:toc}

## Getting started

Are you new to Galaxy, or returning after a long time, and looking for help to get started? Take [a guided tour](https://ecology.usegalaxy.eu/tours/core.galaxy_ui){:target="_top"} through Galaxy's user interface.

Want to learn about ecology analyses? Check our [tutorials](#tutorials) or take one of our guided tour:

- Introduction to species phenology study and abundance index as trends computation.

# Tools

Almost 140 tools are proposed in this custom Galaxy instance. They were chosen for their use in exploitation of ecology data:

- **General tools**
    - **Text Manipulation**: JQ process JSON, Replace Text, cast, melt, Subtract, Complement, Cluster, Replace text in a specific column, Replace parts of text, text reformatting, Text transformation, Unfold columns, Replace column, Add input name as column, Create text files, Sort a row, reverse a file, Compute an expression, Regex replace, Subtract Whole Dataset, Merge Columns, Unique occurences, Add column, Merge Columns together, Convert delimiters to TAB, Change Case, Trim characters, Secure Hash
    - **Filter and Sort**: Unique, Unique lines, Sort, Select random lines, Select first lines (head), Select last lines (tail), Remove beginning, Cut columns, Search in textfiles, XPath, Column arrange, Query tabular, Filter data on any column, Sort data, Select lines, Remove columns, Sort Column Order
    - **Join, Substract and Group**: Join two files, Multi-Join, Split file, Concatenate datasets, Paste two files side by side, Reverse, Transpose, Datamash, Subtract, Join two Datasets, Compare two Datasets, Group data by a column
    - **File conversion**: Tabular to CSV, CSV to Tabular, RData parser, RData reader, SQLite to tabular, Netcdf Read, Netcdf Metadata info, GDAL Translate
    - **Graph / Display Data**: Bar chart, Histogram, Histogram w ggplot2, Scatterplot, Scatterplot w ggplot2, Plotting tool for multiple series, Boxplot, heatmap2, Violin plot w ggplot2, Heatmap w ggplot, PCA w ggplot2, rtsne, Visualize hierarchical data with Krona, Venn Diagram
- **Statistics tools**
	- **Treat Samples**: Generate random samples, Select max values Statistical
	- **Pre-process**: Line/Word/Character count, Count, Arithmetic Operations, Feature Selection, Preprocess raw feature vectors
	- **Descriptive Stats**: Summary Statistics, Hypothesis testing, Correlation
	- **Classification**: Numeric Clustering, Calculate metrics for classification, Nearest Neighbors Classification
	- **Multi-dimensional Analysis**: PCA, Kernel CCA, CCA, Generate a Matrix for PCA/LDA, Perform LDA, Draw ROC plot, Multivariate PCA PLS and OPLS
	- **Classical Analysis**: Univariate statistics, T Test for Two Samples, ANOVA, Wavelet variance, Evaluate pairwise distance, Sparse Matrix Functions
	- **Model-based**: Perform Best-subsets Regression, Hyperparameter Search, Pipeline Builder, Model validation, Generalized linear models, Discriminant analysis, MINE, Calculate metrics for regression performance, Ensemble methods
- **Ecology tools**
    - **Get Ecological data**: Get species occurences data, Get protocoled data from Vigie-Nature ,Get climatic data from Worldclim
    - **Graph / Display Ecological data**: Compare sites
    - **Animal Detection on Acoustic Recordings**: Tadarida-d (from wav file to features), Tadarida-c (from features to species), Tadarida data cleaner, Tadarida identification integration, Advanced restitution: raw approach, Advanced restitution: summary
    - **Phenology & Trend computation**: Flight curve, Abundance index, Expected temporal trend, Model temporal trend, Autocorrelation test, Linear regression adjusted, Plot abundance
    - **GIS objects handling**: GDAL Info, GDLA Translate, GDAL addo, GDAL Build VRT, GDAL Merge, GDAL Warp, OGR Info


## Tutorials

We are passionate about training. So we are working in close collaboration with the [Galaxy Training Network (GTN)](https://galaxyproject.org/teach/gtn/){:target="_blank"} to develop training materials of data analyses based on Galaxy {% cite batut2017community %}. These materials hosted on the GTN GitHub repository are available online at [https://training.galaxyproject.org](https://training.galaxyproject.org){:target="_blank"}.

We then developed [several tutorials](https://training.galaxyproject.org/training-material/topics/ecology/){:target="_blank"} and more will come:

- Introduction to species phenology study and abundance index as trends computation
- Introduction to Species Distribution Modeling (SDM) using Wallace R Shiny app

# Workflows

- Phenology study and abundance index as trends computation through regionalGAM

## References
{% bibliography --cited --prefix index-metagenomics --group_by none %}
