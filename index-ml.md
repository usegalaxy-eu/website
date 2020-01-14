---
layout: subsite-galaxy
website: https://ml.usegalaxy.eu
subdomain: ml
---

# Welcome to the Machine Learning workbench
{:.no_toc}

![RNA Galaxy](/assets/media/machine_learning_logo.png){:.rna-intro-right}

The Galaxy Machine Learning workbench is a comprehensive set of analysis tools, consolidated workflows and training material.
The workbench is based on the [Galaxy framework](https://galaxyproject.org){:target="_blank"}, which guarantees simple access, easy extension,
flexible adaption to personal and security needs, and sophisticated analyses independent of command-line knowledge.

The current implementation provides you with the a Swiss Army knife of [scikit-learn](https://scikit-learn.org){:target="_blank"},
[Keras](https://keras.io){:target="_blank"} (a deep learning library based on [TensorFlow](https://www.tensorflow.org){:target="_blank"}) and various other tools to
manipulate, convert and plot your data.

The workbench is currently developed by the [Goecks Lab](https://goeckslab.org) and the [European Galaxy project](https://galaxyproject.eu/){:target="_blank"}.
The [German Network for Bioinformatics Infrastructure (de.NBI)](http://www.denbi.de){:target="_blank"},
which runs the German [ELIXIR Node](https://www.elixir-europe.org/){:target="_blank"}, provides the underlying CPU and GPU cluster.

This project is a community effort, please jump in, ask questions, and contribute new tools, workflows or trainings!

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

Want to learn more about machine learning? Take one of our guided tours or check out the following hands-on tutorials.
We have developed several tutorials together with the [GTN community](https://galaxyproject.org/teach/gtn/).

Lesson | Slides | Hands-on | Input dataset | Workflows | Galaxy tour | Galaxy History
--- | --- | --- | --- | --- | --- | ---
Age prediction using machine learning |  | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/statistics/tutorials/age-prediction-with-ml/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/2545213#.XEWTJ9-YVa0){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=83fe480cdbb70099){:target="_blank"} [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=a669986e1a5cee31){:target="_blank"} |  | [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}/u/sbray/h/age-prediction-using-machine-learning---rnaseq){:target="_blank"} [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}/u/sbray/h/age-prediction-using-machine-learning---dna-methylation){:target="_blank"} |
Basics of machine learning |  | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/statistics/tutorials/machinelearning/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/1468039#.W8zyxBRoSAo){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=17e99647745eb150){:target="_blank"} | [<i class="fa fa-magic" aria-hidden="true"></i>](https://github.com/galaxyproject/training-material/tree/master/topics/statistics/tutorials/machinelearning/tours/){:target="_blank"} | [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}/u/sbray/h/basics-of-machine-learning){:target="_blank"} |
Machine learning: classification and regression |  | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/statistics/tutorials/classification_regression/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/2579649#.XHep39F7mL4){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=fdbf1a1a584a429c){:target="_blank"} [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=4b383d13ff512687){:target="_blank"} | [<i class="fa fa-magic" aria-hidden="true"></i>](https://github.com/galaxyproject/training-material/tree/master/topics/statistics/tutorials/classification_regression/tours/){:target="_blank"} | [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}/u/sbray/h/machine-learning---classification){:target="_blank"} [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}/u/sbray/h/machine-learning---regression){:target="_blank"} |
{:.table.table-striped}


# Available tools

In this section we list the most important tools that have been integrated in the Machine Learning workbench.
There are many more tools available so please have a more detailed look into the tool panel.
To ease readability, we divided them into categories.

## Classification

Learning from the data and using this learning to identify which category a new object belongs to.

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="SVM Classifier" %} | Support vector machines (SVMs) for classification| [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="NN Classifier" %} | Nearest Neighbors Classification | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="Ensemble classification" %} | Ensemble methods for classification and regression | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="Discriminant Classifier" %} | Linear and Quadratic Discriminant Analysis| [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="Generalized linear" %} | Generalized linear models for classification and regression | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="CLF Metrics" %} | Calculate metrics for classification performance  | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{: .table.table-striped .tooltable}

## Regression

Predicting a continuous-valued attribute associated with an object.

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="Ensemble regression" %} | Ensemble methods for classification and regression | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="Generalized linear" %} | Generalized linear models for classification and regression | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="Regression metrics" %} | Calculate metrics for regression performance | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{: .table.table-striped .tooltable}

## Clustering

Automatic grouping of similar objects into sets.

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="Numeric clustering" %} | Different numerical clustering algorithms | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{: .table.table-striped .tooltable}

## Dimension reduction

Reducing the dimension of your feature set.

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="lda_analy1" %} | Perform LDA Linear Discriminant Analysis|
{% include tool.html id="pca1" %} | Principal Component Analysis|
{% include tool.html id="kpca1" %} | Kernel Principal Component Analysis|
{% include tool.html id="cca1" %} | Canonical Correlation Analysis|
{% include tool.html id="kcca1" %} | Kernel Canonical Correlation Analysis|
{: .table.table-striped .tooltable}

## Model building

Building general machine learning models.

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="Estimator Attributes" %} | Estimator attributes get important attributes from an estimator or scikit object | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="Stacking Ensemble Models" %} | Stacking Ensembles builds stacking, voting ensemble models with numerous base options | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="Search CV" %} | Hyperparameter Search performs hyperparameter optimization using various SearchCVs  | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="Build Pipeline" %} | Pipeline Builder an all-in-one platform to build pipeline, single estimator, preprocessor and custom wrappers | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{: .table.table-striped .tooltable}

## Model evaluation

Evaluation, validating and choosing parameters and models.

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="Model validation" %} | Model Validation includes cross_validate, cross_val_predict, learning_curve, and more | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="Pairwise Metrics" %} | Evaluate pairwise distances or compute affinity or kernel for sets of samples | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="Train/Test evaluation" %} | Train, Test and Evaluation fit a model using part of dataset and evaluate using the rest | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="Model Prediction" %} | Model Prediction predicts on new data using a preffited model | [Chollet et al. 2011](https://keras.io){:target="_blank"}
{% include tool.html id="Fitted model evaluation" %} | Evaluate a Fitted Model using a new batch of labeled data | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="Model fitting" %} | Fit a Pipeline, Ensemble or other models using a labeled dataset | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{: .table.table-striped .tooltable}


## Preprocessing and feature selection

Feature selection and preprocessing.

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="Data preprocessing" %} | Preprocess raw feature vectors into standardized datasets  | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="Feature selection" %} | Feature Selection module, including univariate filter selection methods and recursive feature elimination algorithm | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{: .table.table-striped .tooltable}

## Deep learning

Build and use deep neural networks.

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="Batch Models" %} | Build Deep learning Batch Training Models with online data generator for Genomic/Protein sequences and images | [Chollet et al. 2011](https://keras.io){:target="_blank"}
{% include tool.html id="Model Builder" %} | Create deep learning model with an optimizer, loss function and fit parameters | [Chollet et al. 2011](https://keras.io){:target="_blank"}
{% include tool.html id="Model Config" %} | Create a deep learning model architecture using Keras | [Chollet et al. 2011](https://keras.io){:target="_blank"}
{% include tool.html id="Train and evaluation" %} | Deep learning training and evaluation conduct deep training and evaluation either implicitly or explicitly  | [Chollet et al. 2011](https://keras.io){:target="_blank"}
{: .table.table-striped .tooltable}

## Visulalization

Poltting and visulazation.

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="plotly_regression_performance_plots" %} | Plot actual vs predicted curves and residual plots of tabular data |
{% include tool.html id="plotly_ml_performance_plots" %} | Plot confusion matrix, precision, recall and ROC and AUC curves of tabular data |
{% include tool.html id="Visualization" %} | Machine Learning Visualization Extension includes several types of plotting for machine learning | [Chollet et al. 2011](https://keras.io){:target="_blank"}
{: .table.table-striped .tooltable}

## Utilities

General data and table manipulation tools.

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="Table compute" %} | The power of the pandas data library for manipulating and computing expressions upon tabular data and matrices. |
{% include tool.html id="datamash operations" %} | datamash operations on tabular data |
{% include tool.html id="datamash transpose" %} | Transpose rows/columns in a tabular file |
{% include tool.html id="Sample Generator" %} | Generate random samples with controlled size and complexity | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{% include tool.html id="Train/Test splitting" %} | Split Dataset into training and test subsets | [Pedregosa et al. 2011](http://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html){:target="_blank"}
{: .table.table-striped .tooltable}

## Interactive Environments

You have done the heavy lifting and now want to use your coding skills inside Jupyter or RStudio? Work on data with the following:

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
- [Simon Bray](https://github.com/simonbray)
