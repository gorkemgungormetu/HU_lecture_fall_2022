# MESSAGE-ix installation

The installation of the MESSAGE-ix platform with dependencies, Anaconda (Miniconda), GAMS and Jupyter notebook, is documented at https://docs.messageix.org/en/stable/index.html. However, the installation and running of the software require prerequisite knowledge and skills for troubleshooting.

The installation steps are outlined below:

## GAMS installation

MESSAGE-ix requires a GAMS solver and license for optimization. After applying for a student's license to sales@gams.com, the license file is retrieved from https://portal.gams.com/ using the username and password provided. Another way is to request a demo license from https://www.gams.com/try_gams/.

During installation, select `Advanced` mode and add GAMS to the `PATH`. 

## Anaconda (Miniconda) installation

I recommend installing Miniconda as many of the Anaconda packages are not necessary (such as the Anaconda Navigator) to run MESSAGE-ix. Make sure that you install Miniconda for Python version 3.8 from https://docs.conda.io/en/latest/miniconda.html. 

## Run Anaconda prompt

After installing Miniconda, run `Anaconda prompt` from the start icon in the taskbar. 

### Select the conda-forge channel

The main purpose is to reduce the time required for searching packages in the channels.

```
conda config --prepend channels conda-forge
```

### Create a new environment

MESSAGE-ix should be run in a new environment other than the base.

``` 
conda create --name message_env
conda activate message_env
```

### Pip installation

Although the documentation recommends a conda installer, the version differences of Python make installation much longer than normal. To overcome this problem, we install pip if it is not already installed with Anaconda (Miniconda).

```
conda list pip
conda install pip
```

## Git installation

To minimize troubleshooting requirements, installation of the most recent version from git is recommended (https://github.com/iiasa/message_ix/issues/660). However, git installation also upgrades the Python version which should be downgraded again to 3.8.

```
conda list git
conda install git
conda list python
conda install python=3.8.16
```

## MESSAGE-ix installation

We install the latest version of the MESSAGE-ix platform from git together with ```pyam-iamc``` for reporting modeling outputs.

```
pip install git+https://github.com/iiasa/message_ix.git@main
pip install pyam-iamc
```

### Check MESSAGE-ix installation and running

The installation of the MESSAGE-ix platform should be checked to avoid any discrepancies.

```
message-ix show-versions
message-ix platform list
```

### Tutorial installation

The tutorials include the hypothetical world of Westeros (let there be light) and the Austrian electricity system. Install the tutorial files inside a directory accessible by the Anaconda prompt.

```
message-ix dl Miniconda3/tutorial
```

## Jupyter notebook install

The tutorial files are run from Jupyter notebook and require installation if it was not installed by Anaconda (Miniconda).

```
conda list nb_conda
conda install nb_conda
```

## Running MESSAGE-ix

The tutorial files are run from Jupyter notebook. Select the tutorial file from the browser running the Jupyter notebook. Make sure that the message environment is selected in the browser.

![image](https://user-images.githubusercontent.com/49947264/236202278-72ffb47f-6ad0-4e60-a962-4ca89f75c1af.png)

Start with ```westeros_baseline.ipynb``` from tutorial files and proceed by running the cells sequentially. 

## Adjusting the tutorial files

The connection with ```ixmp``` database of MESSAGE-ix uses Java code and is prone to errors from Turkish characters (https://github.com/iiasa/ixmp/issues/436). The code for creating an instance of the ixmp database should be modified to fix the locale to English.

```
mp = ixmp.Platform(name="default", jvmargs="-Duser.language=en")
```
