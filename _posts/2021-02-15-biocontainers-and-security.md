---
site: [freiburg]
title: using secure BioContainers to run Galaxy tools
tags:
  - data
  - tools
---

The Galaxy community has heavily invested into the [Bioconda](https://doi.org/10.1038/s41592-018-0046-7)-[BioContainer](https://doi.org/10.1093/bioinformatics/btx192)
stack during the last years. We love conda, because it is easy to use, reproducible and everyone can create packages easily. This has lead to nearly 20.000 packages, 8.000 of those
from Bioconda for the biomedical research community.

However, as we already discussed in ["Practical Computational Reproducibility in the Life Sciences"](https://doi.org/10.1016/j.cels.2018.03.014), reproducibility and security is
adjustable and a tradeoff involving usebility and cost. If you require a higher level of reproducibilty and security you might want
to run your tools in a Container - Docker and Singularity are the most prominent container technologies today. For that reason we have created
over the years already [50.000 containers](https://doi.org/10.1021/acs.jproteome.0c00904) for all 8.000 Bioconda packages and other communities.

Thanks to ELIXIR and the BioContainers community we have implemented last year automatic security checks for those containers, to indicate if the included software has known
security issues.

The last missing piece in the puzzle is to switch to those more reproducible and secure containers by default for all tools included in the European Galaxy server.
And this is what we want to tackle during this year. Our plan is to do this in 2 steps.

Step One: We take a centos Singularity container, mount our current conda environments into the container, and run the tool inside this container. This provides a secure
environment and gives us a proven fallback for step 2.

Step Two: We mount all previously created 50.000 Singularity containers using our community build CVMFS repository into the cluster and share those containers with
all nodes. Galaxy will than attempt to find a native Container for every Galaxy tool. If such a Container does not exist, which is unlikely, Galaxy will fallback to Step 1 and
run the tool in a secure Container environment using Conda packages.

If you have any questions please do not hesitate to contact the BioContainers community or the European Galaxy Project.

