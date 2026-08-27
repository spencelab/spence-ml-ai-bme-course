# Hands-On ML / AI for Biomedical Science and Engineering
A. J. Spence - Hands on ML AI in Biomedical Engineering Class Materials

## Week 1

### Python Diagnostic
[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/spencelab/spence-ml-ai-bme-course/blob/main/notebooks/01_Python_Diagnostic_Biomedical_ML.ipynb)

### Python Boot Camp
[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](
https://colab.research.google.com/github/spencelab/spence-ml-ai-bme-course/blob/main/notebooks/02_Python_for_ML_Bootcamp_Biomechanics.ipynb
)

Boot camp supplement:
[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](
https://colab.research.google.com/github/spencelab/spence-ml-ai-bme-course/blob/main/notebooks/00b_Data_Types_Indexing_Bridge.ipynb
)

## Coding Environment Setup for Visual Studio Code

We will start the course using Google Colab, but we will also set up a local Python environment in Visual Studio Code. This will give us better tools for inspecting variables, debugging code, and working with larger local datasets later in the semester.

### 1. Install Miniforge

Download and install Miniforge for your operating system and processor:

https://github.com/conda-forge/miniforge

- **Windows:** use the Miniforge installer, then open the **Miniforge Prompt**
- **macOS:** install the appropriate Apple Silicon or Intel version, then use **Terminal**

You only need to install Miniforge once.

### 2. Download the class Python environment

From this GitHub repository, download the file:

`environment.yml`

Then open Terminal (macOS) or Miniforge Prompt (Windows), navigate to the folder containing the file, and run:

```bash
conda env create -f environment.yml
```

This will create the class environment named:

```text
handson-ml-ai
```

Activate it with:

```bash
conda activate handson-ml-ai
```

You should then see something like this at the beginning of your command prompt:

```text
(handson-ml-ai)
```

### 3. Install Visual Studio Code

Download and install Visual Studio Code:

[https://code.visualstudio.com/](https://code.visualstudio.com/)

### 4. Install the VS Code extensions

Launch Visual Studio Code and open the **Extensions** panel.

Install:

* **Python** (Microsoft)
* **Jupyter** (Microsoft)

You do **not** need a separate "IPython Notebook" extension.

### 5. Open a class notebook

Download or clone this class GitHub repository, then open the folder in Visual Studio Code.

Open:

`notebooks/01_Python_Diagnostic_Biomedical_ML.ipynb`

VS Code should recognize it as a Jupyter notebook.

### 6. Select the class Python environment

At the upper right of the notebook, click **Select Kernel**.

Choose the Python environment named:

```text
handson-ml-ai
```

If you do not immediately see it, choose:

**Select Another Kernel → Python Environments → handson-ml-ai**

If it doesn't show up there, try clicking the Python symbol in the left hand extensions columns, then open "environemnt manager" down teh bottom, and it should show all your environemtns and you can clikc the check box to assigne the environment to this project, and then is should appear in teh upper right and your can run your cells in it.

<img width="1728" height="1045" alt="image" src="https://github.com/user-attachments/assets/111cac7e-171a-4670-8168-cd51b3895d44" />

### 7. Test your setup

Run several cells in the diagnostic notebook.

Make sure that you can:

* run Python code cells
* see output below a cell
* import NumPy and pandas
* open the **Variables** view
* inspect lists, NumPy arrays, and pandas DataFrames
* define and call a Python function

Try:

```python
import numpy as np
import pandas as pd

x = np.array([1, 2, 3, 4])

def square(x):
    return x**2

df = pd.DataFrame({
    "x": x,
    "x_squared": square(x)
})

df
```

You should be able to inspect `x`, `df`, and other objects while the notebook is running.

### If something goes wrong

Don't spend an hour fighting your computer alone. Bring the error to class or post the exact error message so we can troubleshoot it together.

````

And here’s the environment I’d start with:

```yaml
name: handson-ml-ai

channels:
  - conda-forge

dependencies:
  - python=3.12
  - numpy
  - pandas
  - scipy
  - matplotlib
  - scikit-learn
  - jupyterlab
  - notebook
  - ipykernel
  - ipython
  - openpyxl
  - seaborn
  - statsmodels
  - pip
````

[Download `environment.yml`](sandbox:/mnt/data/environment.yml)

Note how these things are linked:

```bash
conda activate handson-ml-ai
jupyter lab
```

versus selecting `handson-ml-ai` as the kernel in VS Code.

**Miniforge/Conda = Python + packages**
**Jupyter kernel = running Python session**
**VS Code or JupyterLab = interface looking at that session**

## Coding Environment Setup for Visual Studio Code

*. Install mini-forge for your computer type: https://github.com/conda-forge/miniforge
*. Use terminal or miniforge prompt to install the class python environment:
    *. Do this...
*. Install Visual Studio Code
*. Launch it, and install the following extensions:
    *. Python, debugger, more
    *. Jupyter notebooks? renderer, plotly
    *. Ipython notebooks?
*. Open the diagnostic ipynb file from this class github page.
*. Test that you can run things, see variables and function objects, etc.
