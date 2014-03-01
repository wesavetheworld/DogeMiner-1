#!/bin/bash

/usr/bin/apt-get update
/usr/bin/apt-get install git build-essential autotools-dev libcurl4-gnutls-dev autoconf automake screen

cd ~/
/usr/bin/git clone https://github.com/pooler/cpuminer.git
cd cpuminer/
bash autogen.sh
CFLAGS="-O3 -Wall -msse2" ./configure
/usr/bin/make
screen -S muchcoin

