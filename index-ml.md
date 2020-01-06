---
layout: subsite-galaxy
website: https://ml.usegalaxy.eu
subdomain: ml
---

# Welcome to the Machine Learning workbench
{:.no_toc}

![RNA Galaxy](/assets/media/rna_workbench_2.png){:.rna-intro-right}

The Galaxy Machine Learning workbench is a comprehensive set of analysis tools, consolidated workflows and training material.
The workbench is based on the [Galaxy framework](https://galaxyproject.org){:target="_blank"}, which guarantees simple access, easy extension,
flexible adaption to personal and security needs, and sophisticated analyses independent of command-line knowledge.

The current implementation provides you with the Swiss Army knife [scikit-learn](https://scikit-learn.org){:target="_blank"},
[Keras](https://keras.io){:target="_blank"} a deep learning library based on [TensorFlow](https://www.tensorflow.org){:target="_blank"} and various other tools to
manipulate, convert and plot your data.

The workbench is currently developed by the [Goecks Lab](https://goeckslab.org) and the [European Galaxy project](https://galaxyproject.eu/){:target="_blank"}.
The [German Network for Bioinformatics Infrastructure (de.NBI)](http://www.denbi.de){:target="_blank"},
running the German [ELIXIR Node](https://www.elixir-europe.org/){:target="_blank"} is providing the underlying CPU and GPU cluster.

This project is a community effort, please jump in, ask questions, contribute new tools, workflows or trainings!

# Content
{:.no_toc}

1. TOC
{:toc}

# Get started

Are you new to Galaxy, or returning after a long time, and looking for help to get started?
Take [a guided tour]({{ page.website }}/tours/core.galaxy_ui){:target="_blank"} through Galaxy's user interface.

# Training

We are passionate about training. So we are working in close collaboration with the
[Galaxy Training Network (GTN)](https://galaxyproject.org/teach/gtn/){:target="_blank"} to develop training materials of data analyses
based on Galaxy {% cite batut2017community %}. These materials hosted on the GTN GitHub
repository are available online at [https://training.galaxyproject.org](https://training.galaxyproject.org){:target="_blank"}.

Want to learn more about Machine Learning? Take one of our guided tours or check out the following hands-on tutorials.
We developed several tutorials together with the [GTN community](https://galaxyproject.org/teach/gtn/).

Lesson | Slides | Hands-on | Input dataset | Workflows | Galaxy tour | Galaxy History
--- | --- | --- | --- | --- | --- | ---
Age prediction using machine learning |  | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/statistics/tutorials/age-prediction-with-ml/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/2545213#.XEWTJ9-YVa0){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>](https://github.com/galaxyproject/training-material/tree/master/topics/statistics/tutorials/age-prediction-with-ml/workflows/){:target="_blank"} |  |
Basics of machine learning |  | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/statistics/tutorials/machinelearning/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/1468039#.W8zyxBRoSAo){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>](https://github.com/galaxyproject/training-material/tree/master/topics/statistics/tutorials/machinelearning/workflows/){:target="_blank"} | [<i class="fa fa-magic" aria-hidden="true"></i>](https://github.com/galaxyproject/training-material/tree/master/topics/statistics/tutorials/machinelearning/tours/){:target="_blank"} |
{:.table.table-striped}


# Available tools

In this section we list the most important tools that have been integrated in the Machine Learning workbench.
There are many more tools available so please have a more detailed look into the tool panel.
To ease readability, we divided them into categories.

## Classification

Identifying which category an object belongs to.

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="sklearn_svm_classifier" %} | SVM classifier | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="sklearn_train_test_eval" %} | | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="model_prediction" %} | | 
{% include tool.html id="keras_batch_models" %} | | 
{% include tool.html id="keras_model_builder" %} | | 
{% include tool.html id="keras_model_config" %} | | 
{% include tool.html id="sklearn_sample_generator" %} | | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="sklearn_estimator_attributes" %} | | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="sklearn_stacking_ensemble_models" %} | | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="sklearn_searchcv" %} | | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="sklearn_build_pipeline" %} | | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="sklearn_pairwise_metrics" %} | | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="sklearn_nn_classifier" %} | | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="sklearn_ensemble" %} | | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="sklearn_feature_selection" %} | | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="sklearn_data_preprocess" %} | | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="sklearn_clf_metrics" %} | | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="sklearn_discriminant_classifier" %} | | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="sklearn_generalized_linear" %} | | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="sklearn_model_validation" %} | | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="sklearn_fitted_model_eval" %} | | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="sklearn_model_fit" %} | | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="sklearn_train_test_split" %} | | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="ml_visualization_ex" %} | | 
{% include tool.html id="keras_train_and_eval" %} | | 
{: .table.table-striped .tooltable}

## Regression

Predicting a continuous-valued attribute associated with an object.

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="sklearn_regression_metrics" %} | | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{: .table.table-striped .tooltable}

## Clustering

Automatic grouping of similar objects into sets.

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="sklearn_numeric_clustering" %} | | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{: .table.table-striped .tooltable}

## Dimensionality reduction

Reducing the number of random variables to consider.

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="AREsite2" %} | A database for AU-/GU-/U-rich elements in human and model organisms | [Fallmann et al. 2016](https://doi.org/10.1093/nar/gkv1238){:target="_blank"}
{% include tool.html id="DoRiNA" %} | A database of RNA interactions in post-transcriptional regulation | [Blin et al. 2014](https://doi.org/10.1093/nar/gku1180){:target="_blank"}
{% include tool.html id="PARalyzer" %}| An algorithm to generate a map of interacting RNA-binding proteins and their targets | [Corcoran et al. 2011](https://doi.org/10.1186/gb-2011-12-8-r79){:target="_blank"}
{% include tool.html id="Piranha" %} | A peak-caller for CLIP- and RIP-seq data | -
{: .table.table-striped .tooltable}

## Model selection

Comparing, validating and choosing parameters and models.

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="TargetFinder" %} | A tool to predict small RNA binding sites on target transcripts from a sequence database | -
{: .table.table-striped .tooltable}


## Preprocessing

Feature extraction and normalization.

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="FastQC" %} | A quality control tool for high throughput sequence data | -
{% include tool.html id="Trim Galore" label="Trim Galore!" %} | Automatic quality and adapter trimming as well as quality control | -
{: .table.table-striped .tooltable}


## Utilities

General data manipulation tools

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="table_compute" %} | The power of the pandas data library for manipulating and computing expressions upon tabular data and matrices. |
{% include tool.html id="datamash_ops" %} | datamash operations on tabular data |
{% include tool.html id="datamash_transpose" %} | datamash transpose |
{: .table.table-striped .tooltable}

## Interactive Environments

You have done the heavy lifting and now want to use your coding skills inside Jupyter or RStudio? Work on data 

Tool | Description | Reference
--- | --- | ---
[Jupyter](https://live.usegalaxy.eu/?tool_id=interactive_tool_jupyter_notebook){:target="_blank"} | Jupyter lab | 
[RStudio](https://live.usegalaxy.eu/?tool_id=interactive_tool_rstudio_notebook){:target="_blank"} | RStudio | 
{: .table.table-striped .tooltable}


# Contributors

- [Qiang Gu](https://github.com/qiagu)
- [Jeremy Goecks](https://github.com/jgoecks)
- [Anup Kumar](https://github.com/anuprulez)
- [Bjoern Gruening](https://github.com/bgruening)
- [Alireza Khanteymoori](https://github.com/khanteymoori)
