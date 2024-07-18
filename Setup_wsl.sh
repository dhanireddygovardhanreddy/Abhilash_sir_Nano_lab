#!/bin/bash

echo ' THis Script is only for WSL'

sleep 2

echo 'Please run this script in home directory' 

sleep 2

cd ..

pwd

sudo apt update

#install quantum-espresso
sudo apt install --no-install-recommends libfftw3-dev quantum-espresso

#install Xcrysden
sudo apt-get install --no-install-recommends tk libglu1-mesa libtogl2 libfftw3-3 libxmu6 libgfortran4 imagemagick openbabel

wget http://www.xcrysden.org/download/xcrysden-1.6.2-linux_x86_64-shared.tar.gz

tar -xzvf xcrysden-1.6.2-linux_x86_64-shared.tar.gz

echo 'export PATH=$PATH:/home/$USER/xcrysden-1.6.2-linux_x86_64-shared.tar.gz' >> ~/.bashrc

#install critic2
sudo apt install cmake gfortran

git clone https://github.com/aoterodelaroza/critic2.git 

cd critic2 && mkdir build && cd build 

cmake .. && make && cd src && cd 

echo $USER 

echo 'export PATH=$PATH:/home/$USER/critic2/build/src' >> ~/.bashrc 

source ~/.bashrc && critic2

exit

#Setup Xming server 
echo 'export DISPLAY=$(grep -m 0 nameserver /etc/resolv.conf | awk '{print $2}'):0.0' >> ~/.bashrc

source ~/.bashrc
