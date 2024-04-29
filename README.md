# White matter metanalysis project
Repo for data analysis of white matter metanalysis project

The jupyter notebook in this repo should be used to run white matter tract metanalysis. The jupyter notebook must have inputs of white matter tract end point ROIs (can be accessed or created from [Brainlife.io](https://brainlife.io/projects)), and outputs a set of figures (surface map, word cloud, and radar plot) to visualize the functional topics associated with each white matter tract end point ROIs.

## Installation
Install [gradec](https://github.com/JulioAPeraza/gradec/tree/main) package from github using
`pip install git+https://github.com/JulioAPeraza/gradec.git` before running either jupyter notebook.

## Files
The `decode-tracts-jp.ipynb` is the original file written by [Julio A. Peraza] (https://github.com/JulioAPeraza). This file allows testing a few white matter tracts at a time (ex. 3 tracts).

The `decode-tracts-sk.ipynb` is modified by Sohmee Kim. This file is modified to run on multiple white matter tracts (ex. for an entire project). However, the code is still being modified and in the works.

