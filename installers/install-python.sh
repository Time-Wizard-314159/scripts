#!/bin/bash

echo "Configuring packages..."
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y \
    build-essential \
    libbz2-dev \
    libffi-dev \
    libgdbm-dev \
    liblzma-dev \
    libncurses5-dev \
    libnss3-dev \
    libreadline-dev \
    libssl-dev \
    libsqlite3-dev \
    pkg-config \
    tk-dev \
    wget \
    zlib1g-dev

cd /tmp

wget -q https://www.python.org/ftp/python/3.10.4/Python-3.10.4.tgz

tar -xf Python-3.10.4.tgz

echo "Building Python 3.10.4..."
cd Python-3.10.4
./configure --enable-optimizations --with-ensurepip=install --with-system-ffi
make -j $(nproc)

echo "Installing Python 3.10.4..."
sudo make altinstall

echo "All done!"
