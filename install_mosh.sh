#!/bin/sh


# this script does absolutely ZERO error checking.   however, it worked
# for me on a RHEL 6.3 machine on 2012-08-08.  clearly, the version numbers
# and/or URLs should be made variables.  cheers,  zmil...@cs.wisc.edu
# Slightly modified based on https://gist.github.com/xiaom/8264691


mkdir $HOME/mosh
cd $HOME/mosh

ROOT=`pwd`

echo "==================================="
echo "about to set up everything in $ROOT"
echo "==================================="

mkdir build
mkdir install

cd build
curl -O http://protobuf.googlecode.com/files/protobuf-2.4.1.tar.gz
tar zxvf protobuf-2.4.1.tar.gz
curl -O https://mosh.mit.edu/mosh-1.2.5.tar.gz
tar zxvf mosh-1.2.5.tar.gz

echo "================="
echo "building protobuf"
echo "================="

cd $ROOT/build/protobuf-2.4.1
export CXXFLAGS="$CXXFLAGS -fPIC"
./configure --prefix=$HOME/local
make install


echo "============="
echo "building mosh"
echo "============="

cd $ROOT/build/mosh-1.2.5
export PROTOC=$HOME/local/bin/protoc
export protobuf_CFLAGS=-I$HOME/local/include
export protobuf_LIBS=$HOME/local/lib/libprotobuf.so

./configure --prefix=$HOME/local
make install

echo "==="
echo "if all was successful, binaries are now in $ROOT/local/bin"
echo "set PATH to $ROOT/local/bin"
echo "Set LD_LIBRARY_PATH to export LD_LIBRARY_PATH=\"$LD_LIBRARY_PATH:$ROOT/local/lib\""
echo "Run Mosh server as \"mosh-server new -s -c 256 -l LANG=en_US.UTF-8 -l LC_ALL=en_US.UTF-8 LC_CTYPE=en_US.UTF-8\""
echo "==="
