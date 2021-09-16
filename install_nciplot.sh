#! /bin/bash

#Just for safety, backupup the .bashrc
cp ~/.bashrc ~/.bashrc.bkp

#Get NCIPlot code
git clone https://github.com/juliacontrerasgarcia/nciplot.git

#Enter the source code directory
cd /home/$(whoami)/nciplot/src_nciplot_4.0

#Build dependencies
make mrproper

#Compile the software
make

#Create a fancy alias for the software
echo "alias nciplot=\"/home/$(whoami)/nciplot/src_nciplot_4.0/nciplot.exe\"" >> ~/.bashrc

#Set-up NCIPLOT_HOME variable
echo "export NCIPLOT_HOME=$(pwd)/nciplot"  >> ~/.bashrc

#Number of threads for openmpi
echo "export OMP_NUM_THREADS=2" >> ~/.bashrc

#Reload the new variables
source ~/.bashrc
