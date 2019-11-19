#!bin/bash
echo "---------------Setting up---------------"
echo ""
echo "---------------apt update---------------"
echo ""
sudo apt update
echo ""
echo "---------------Installing essentials---------------"
sudo apt install exfat-* build-essential openssh-* g++ gcc gfortran net-tools beets ffmpeg gconf2 automake autoconf ghostscript gnuplot-x11 nmap okular vlc*
echo ""
echo "---------------apt update---------------"
echo ""
sudo apt update
echo ""
echo "---------------apt upgrade---------------"
echo ""
sudo apt upgrade
echo ""
echo "---------------Installing Python Packages---------------"
echo ""
sudo apt install python-pip
pip install scipy numpy matplotlib requests requests-oauthlib swig
echo ""
echo "---------------Installing Python3 Packages---------------"
echo ""
sudo apt install python3-pip
pip3 install scipy numpy matplotlib requests requests-oauthlib swig
echo "---------------End of Script---------------"
