@echo off

conda env create -f "%~dp0environment.yml"

conda run -n handson-ml-ai python -m ipykernel install ^
    --user ^
    --name handson-ml-ai ^
    --display-name "Python (handson-ml-ai)"

pause
