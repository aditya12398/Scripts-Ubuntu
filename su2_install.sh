#!/bin/bash

#SU2 installation script specifically for the user slimshady.
#Kindly change the username, directory and move to the required directory

cd /usr/local/
sudo mkdir SU2
cd ./SU2
sudo git clone https://github.com/su2code/SU2.git
sudo git clone https://github.com/su2code/TestCases.git
sudo mv SU2 su2-home
cd su2-home/
export CXXFLAGS="-O3 -Wall" && sudo ./preconfigure.py --enable-autodiff --enable-mpi --with-cc=/usr/local/bin/mpicc --with-cxx=/usr/local/bin/mpicxx --prefix=/usr/local/SU2/su2-install --enable-PY_WRAPPER
sudo tee -a ~/.bashrc <<EOF
export SU2_RUN="/usr/local/SU2/su2-install/bin"
export SU2_HOME="/home/slimshady/SU2/su2-home/"
export PATH=\${PATH}:\${SU2_RUN}
export PYTHONPATH=\${PYTHONPATH}:\${SU2_RUN}
EOF
source ~/.bashrc
sudo make -j 4 install
sudo cp -R ../TestCases/* ./TestCases/
cd ./TestCases/
python serial_regression.py
