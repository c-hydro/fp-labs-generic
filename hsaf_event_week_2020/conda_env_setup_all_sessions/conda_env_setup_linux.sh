#!/bin/bash

unset PYTHON_DIR
unset PYTHON_VERSION
unset PYTHON_LIB
unset PYTHONHOME
unset PYTHONPATH
unset PYTHON_INCLUDE
#Script to create a conda environment sm_env and install the necessary required packages
#compile scipt using command chmod +x conda_env_setup.sh and then run it ./conda_env_setup.sh

wget https://repo.anaconda.com/miniconda/Miniconda3-4.7.10-Linux-x86_64.sh -O miniconda.sh
bash miniconda.sh -b -p $HOME/miniconda
export PATH="$HOME/miniconda/bin:$PATH"
conda create -n hsaf_env
conda install -n hsaf_env -c conda-forge numpy scipy pandas matplotlib rasterio geopandas netCDF4 pyflakes statsmodels cartopy basemap basemap-data-hires cython h5py jupyter gdal python=3.6 metview pybufr-ecmwf pykdtree pygrib pyresample
source activate hsaf_env
conda install -c conda-forge cdo 
pip install --upgrade pip
pip install ascat pytesmo metview

