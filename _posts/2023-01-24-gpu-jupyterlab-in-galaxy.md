---
site: [pasteur, freiburg, erasmusmc, elixir-it, belgium, genouest]
tags: [tools, galaxy]
title: "GPU-enabled JupyterLab in Galaxy Europe for AI" 
supporters:
- galaxy-europe
- denbi
- unifreiburg
- elixir
author_github: anuprulez
---

### Introduction

Artificial intelligence (AI) algorithms are being increasingly applied in several fields of Bioinformatics such as protein 3D structure and drug-response 
prediction, imputing missing data in single-cell gene expression, image segmentation using biomedical images and many more. AI algorithms that train on a large amount of scientific data require powerful compute infrastructure consisting of several CPUs, GPUs and a large storage. [JupyterLab](https://jupyterlab.readthedocs.io/en/stable/) provides an excellent framework for developing AI programs but it needs to be hosted on such a powerful infrastructure. To bridge this gap an open-source, Docker-based, and GPU-enabled JupyterLab notebook infrastructure has been developed that runs on the public compute infrastructure of Galaxy Europe for rapid prototyping and developing end-to-end AI projects. Using such an infrastructure, long-running AI model training programs can be executed remotely. Trained models, represented in a standard [open neural network exchange](https://github.com/onnx/onnx) (ONNX) format and other resulting datasets are created in a Galaxy history. Other features include GPU support for faster training, support for machine learning packages such as [TensorFlow](https://www.tensorflow.org/) and [Scikit-learn](https://scikit-learn.org/stable/), Git integration for version control, the option of creating and executing pipelines of notebooks, the availability of multiple dashboards for monitoring compute resources and visualizations using [Bokeh](https://docs.bokeh.org/en/latest/), [Seaborn](https://seaborn.pydata.org/), [Matplotlib](https://matplotlib.org/), [Bqplots](https://github.com/bqplot/bqplot), [Voila](https://github.com/voila-dashboards/voila). In addition, the JupyterLab tool can also be used as a regular Galaxy tool in a [workflow](https://usegalaxy.eu/u/kumara/w/gpujupytool-imported-from-uploaded-file). These features make the JupyterLab notebook highly suitable for creating and managing AI projects.


![GPU-enabled JupyterLab in Galaxy Europe for AI](https://raw.githubusercontent.com/anuprulez/gpu_jupyterlab_paper_images/master/jupyterlab_ai.png)


### Comparison with Google Colab and Kaggle Kernels

In comparison to popular online infrastructures that provide editors similar to JupyterLab, Galaxy JupyterLab provides free of charge unlimited access to GPU-enabled environments for developing AI models. [Google Colab](https://colab.research.google.com/) and [Kaggle Kernels](https://www.kaggle.com/) provide limited sessions which are as long as only 12 hours. In addition to shorter session time, the amount of memory provided by their sessions is variable and dependent on how much in the past a user has used them. In contrast, Galaxy's JupyterLab provides constant compute resources for unlimited time consisting of 20 GB RAM, 15 GB additional from one GPU, 7 vCPUs and 1 TB of storage for each session of JupyterLab providing a robust environment for developing AI models. In addition, it is possible to create long-running AI model training jobs from any JupyterLab notebook that get executed remotely on Galaxy's cluster. The resulting datasets become available a newly created Galaxy history and the JupyterLab session that started the training job can be safely exited. This feature of training AI models remotely is not available in Google Colab and Kaggle Kernels. Paid subscriptions of Google Colab, pro and pro+, provide a better set of compute resources but they come at a cost of EUR 9.25 and EUR 42.25 per month, respectively.


### Implementation

A Docker container is created that installs several packages such as JupyterLab, TensorFlow, Scikit-learn, Pandas, Bokeh, Elyra AI, Seaborn, ONNX, Git, GPU dashboard, ColabFold, JAX and many others for machine learning and data science projects. The container inherits an official ["NVIDIA/CUDA" base container](https://hub.docker.com/layers/nvidia/cuda/11.8.0-cudnn8-runtime-ubuntu20.04/images/sha256-74b166e2091bb705e9ada685dffe79930612c725669bc87e01125b5245d13f97?context=explore) that contains CUDA packages for GPUs to work with TensorFlow and then installs the above-mentioned packages. The Docker container is downloaded by a [Galaxy interactive tool](https://github.com/usegalaxy-eu/galaxy/blob/release_22.05_europe/tools/interactive/interactivetool_ml_jupyter_notebook.xml) to make it available on Galaxy Europe. Having a Docker container running in the backend provides many security benefits as it interacts minimally with the remote computer's operating system. In addition, a non-root user inside the container provides additional security benefits. These benefits are important as users can execute arbitrary code on JupyterLab notebooks. The Docker container can separately be downloaded to any laptop or personal computer (having at least 20 GBs of space) or any other compute infrastructure from [Docker hub](https://hub.docker.com/layers/anupkumar/docker-ml-jupyterlab/galaxy-integration-0.2/images/sha256-e2d7e28a2f975523db0f5ac29c2e2ce3c7a35b061072098ad388d5b42ee86fba?context=repo) and used. If NVIDIA GPUs are available, the Docker container will automatically recognise them. Otherwise, it will run on CPUs. The scripts to run the container is mentioned in the [GitHub repository](https://github.com/ anuprulez/ml-jupyter-notebook).


### Use-cases
A recent scientific publication that predicts infected regions of [COVID-19 CT scan images](https://www.sciencedirect.com/science/article/pii/S2666990021000069) is reproduced using multiple features of JupyterLab. In addition, [ColabFold](https://github.com/sokrypton/ColabFold), a faster implementation of [AlphaFold2](https://www.nature.com/articles/s41586-021-03819-2), can also be accessed in this notebook to predict the 3D structure of protein sequences. JupyterLab notebook is accessible in two ways - first as an interactive Galaxy tool and second by running the underlying docker container. In both ways, long-running training can be executed on Galaxy’s compute infrastructure.


### How to apply for this resource

[Google form](http://usegalaxy.eu/gpu-request) should be used to apply for this resource. As this resource is intended for research purposes, an official University Email ID should be given. Once the request is approved by a Galaxy admin, the resource can be readily used on Galaxy Europe. Steps for application:

1. Create an account on [Galaxy Europe](https://usegalaxy.eu/) using your official university
email id
2. Apply for accessing GPU Jupyterlab using this [Google form](http://usegalaxy.eu/gpu-request)
3. Use your official university email id in the Google form. This resource is available only for
research purposes.
4. Wait up to 1-2 days to get the request approved.
5. Once approved, you will be able to run this resource on Galaxy Europe.
6. If not authorised, then an error message will be shown.
7. Contact us at: contact@usegalaxy.eu if there are issues.

### Much more ...

Please look at the [Galaxy tutorial](https://training.galaxyproject.org/training-material/topics/statistics/tutorials/gpu_jupyter_lab/tutorial.html) and the [preprint](https://www.biorxiv.org/content/10.1101/2022.07.08.499333v1.full.pdf) for learning more about it.


### Useful links

- [Scripts](https://github.com/ anuprulez/ml-jupyter-notebook) to create the Docker container.
- [Docker container](https://hub.docker.com/layers/anupkumar/docker-ml-jupyterlab/galaxy-integration-0.2/images/sha256-e2d7e28a2f975523db0f5ac29c2e2ce3c7a35b061072098ad388d5b42ee86fba?context=repo) on Docker hub.
- JupyterLab in a [Galaxy workflow](https://usegalaxy.eu/u/kumara/w/gpujupytool-imported-from-uploaded-file).
- Galaxy training network (GTN) [tutorial](https://training.galaxyproject.org/training-material/topics/statistics/tutorials/gpu_jupyter_lab/tutorial.html) on how to use this resource.
- An accessible infrastructure for artificial intelligence using a Docker-based JupyterLab in Galaxy [Preprint](https://www.biorxiv.org/content/10.1101/2022.07.08.499333v1.full.pdf)
