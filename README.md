# numpy-atlas-container

This repository contains Dockerfile for numpy with atlas backend configuration. It is prepared to work out of the box. Atlas is compiled to use as many cores as it could. Repository contains also benchmark.py which is basic benchmark which was used to compare Atlas with other numpy backends.

To build container:
1. cd to Dockerfile directory
2. docker build --name numpy-atlas .

To run container (interactive mode):
docker run -it numpy-atlas # without volume
docker run -it -v $(pwd):/home/volume numpy-atlas # with volume mounted
