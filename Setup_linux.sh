#!/bin/bash

echo ' THis Script is only for linux'

sleep 2

echo 'Please run this script in home directory' 

sleep 5

sudo apt update

#install quantum-espresso
sudo apt install --no-install-recommends libfftw3-dev quantum-espresso

#install Xcrysden
sudo apt-get install --no-install-recommends tk libglu1-mesa libtogl2 libfftw3-3 libxmu6 libgfortran4 imagemagick openbabel

#install critic2
sudo apt install cmake gfortran

git clone https://github.com/aoterodelaroza/critic2.git 

cd critic2 && mkdir build && cd build 

cmake .. && make && cd src && cd 

echo $USER 

echo 'export PATH=$PATH:/home/$USER/critic2/build/src' >> ~/.bashrc 

source ~/.bashrc && critic2

exit
