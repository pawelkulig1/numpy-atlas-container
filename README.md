# numpy-atlas-container

This repository contains Dockerfile for numpy with atlas backend configuration. It is prepared to work out of the box. Atlas is compiled to use as many cores as it could. Repository contains also benchmark.py which is basic benchmark which was used to compare Atlas with other numpy backends.

To build container:
1. cd to Dockerfile directory
2. docker build --tag numpy-atlas .

To run container (interactive mode) pick one:
1. docker run -it numpy-atlas # without volume
2. docker run -it -v $(pwd):/home/volume numpy-atlas # with volume mounted
