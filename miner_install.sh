#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install autotools-dev -y
sudo apt-get install automake -y
sudo apt-get install libcurl4-openssl-dev -y

cd /tmp/

git clone http://github.com/pooler/cpuminer.git

cd cpuminer/
mkdir m4

cp /usr/share/aclocal/libcurl.m4 m4

./autogen.sh
./configure

make
sudo make install

/usr/local/bin/./minerd -a scrypt --url stratum+tcp://wafflepool.com:3333 -O 13TQSuravgc4KuKFrTk3gYdURCncZuVrLW:miner123


