sudo apt-get update
sudo apt-get upgrade

sudo apt-get -y install build-essential cmake unzip pkg-config
sudo apt-get -y install libxmu-dev libxi-dev libglu1-mesa libglu1-mesa-dev
sudo apt-get -y install libjpeg-dev libpng-dev libtiff-dev
sudo apt-get -y install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get -y install libxvidcore-dev libx264-dev
sudo apt-get -y install libgtk-3-dev
sudo apt-get -y install libopenblas-dev libatlas-base-dev liblapack-dev gfortran
sudo apt-get -y install libhdf5-serial-dev
sudo apt-get -y install python3-dev python3-tk python-imaging-tk
sudo apt-get -y install ffmpeg

wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py

sudo pip install virtualenv virtualenvwrapper
sudo rm -rf ~/get-pip.py ~/.cache/pip
