#!/bin/bash

# install
apt-get update -y

# To build
apt-get install gcc -y
apt-get install nasm -y
apt-get install make -y
apt-get install mingw-w64 -y

# To run
apt-get install qemu -y

# Utils
apt-get install vim -y

