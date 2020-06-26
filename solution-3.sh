#!/bin/bash

# `Given a list of texts in file workdays.txt:
# Monday
# Tuesday
# Wednesday
# Thursday
# Friday
# 1] setup your Linux environment to use OpenSSL Symmetry encryption system [ you could use this as a guide ]
mkdir temp/  || true && cd temp
wget http://www.openssl.org/source/openssl-1.0.1g.tar.gz.md5
md5sum openssl-1.0.1g.tar.gz
tar -xvzf openssl-1.0.1g.tar.gz
cd openssl-1.0.1g
./config --prefix=/usr/local/openssl --openssldir=/usr/local/openssl
make
sudo make install

cd .. && rm -rf temp
# 2] create a script that uses the OpenSSL system in step one, to encrypt workdays.txt to workdaysencrypted.txt
openssl enc -in workdays.txt -out workdaysencrytion.txt -e -aes256 -k symmetrickey