# MESSAGE-ix installation

The installation of the MESSAGE-ix platform with dependencies, Anaconda (Miniconda), GAMS and Jupyter notebook, is documented at https://docs.messageix.org/en/stable/index.html. However, the installation and running of the software requires prerequisite knowledge and skills for troubleshooting.

The installation steps are outlined below:

## GAMS installation

MESSAGE-ix requires GAMS solver and license for optimization. After applying for student's license to sales@gams.com, the license file is retrieved from https://portal.gams.com/ using username and password provided.

During installation, select `Advanced` mode and add GAMS to the `PATH`. 

## Anaconda (Miniconda) installation

I recommend installing Miniconda as many of the Anaconda packages are not necessary (such as the Anaconda Navigator) to run MESSAGE-ix. Make sure that you install Miniconda for Python version 3.8 from https://docs.conda.io/en/latest/miniconda.html. 

## Run Anaconda prompt

After installing Miniconda, run `Anaconda prompt` from the start icon in the task bar. 

### Select conda-forge channel

The main purpose is to reduce the time required for searching packages in the channels.

```conda config --prepend channels conda-forge```

