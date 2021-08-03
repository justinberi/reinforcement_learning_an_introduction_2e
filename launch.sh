#!/bin/bash

docker build . 
docker run \
-p 8888:8888 \
--mount type=bind,source="$(pwd)",target=/home/jovyan/. \
--group-add $(id -g) \
jupyter/scipy-notebook
