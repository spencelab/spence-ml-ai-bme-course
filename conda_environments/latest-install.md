Yep. Here’s the current course environment I’d use now:

```yaml
name: handson-ml-ai

channels:
  - conda-forge

dependencies:
  # Core Python
  - python=3.12
  - pip

  # Scientific Python / data
  - numpy
  - pandas
  - scipy
  - scikit-learn
  - statsmodels
  - openpyxl

  # Plotting / notebook interaction
  - matplotlib
  - seaborn
  - ipympl
  - mplcursors

  # Jupyter / VS Code kernels
  - jupyterlab
  - notebook
  - ipykernel
  - ipython
  - ipywidgets

  # PyTorch stack
  - pytorch=2.14.1
  - torchvision=0.29.1
  - torchmetrics

  # General utility used in many notebooks
  - tqdm
```

I pinned **PyTorch 2.14.1 / torchvision 0.29.1** because that is the exact pair you just successfully tested on the M2 with MPS. I’d leave most of the scientific stack unpinned so conda-forge can solve appropriately across Macs/Windows/Linux.

I also added `ipywidgets` and `tqdm`, which are useful for the notebook/book workflow.

For an existing installation:

```bash
conda activate handson-ml-ai
conda env update -f environment_handson-ml-ai.yml
```

If you want the environment to match the YAML strictly and remove extra packages:

```bash
conda env update -f environment_handson-ml-ai.yml --prune
```

I’d probably **not** tell students to use `--prune` casually, since it can remove extra things they've installed for their own work.

And after creating it from scratch:

```bash
conda env create -f environment_handson-ml-ai.yml

conda activate handson-ml-ai

python -m ipykernel install \
    --user \
    --name handson-ml-ai \
    --display-name "Python (handson-ml-ai)"
```

Géron's current PyTorch repo now recommends `uv` for reproducing his complete environment, but for your course there's no reason to abandon the conda environment you already have working. [github.com](https://github.com/ageron/handson-mlp/blob/main/INSTALL.md?utm_source=chatgpt.com)

:chatgpt-content-reference{index="2"}[Download the latest environment YAML](sandbox:/mnt/data/environment_handson-ml-ai.yml)
