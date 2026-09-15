#!/bin/zsh
set -e

cd "$(dirname "$0")"

conda env create -f environment.yml

conda run -n handson-ml-ai python -m ipykernel install \
    --user \
    --name handson-ml-ai \
    --display-name "Python (handson-ml-ai)"
