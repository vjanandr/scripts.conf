#!/bin/bash

##
# Interactive search.
# Usage: `ff` or `ff <folder>`.
#
BUILD_DIR=/home/aten/rel/arrcus_rel/
BUILD_DIR_ROOT=/home/aten/rel/
IMAGE_DIR=/home/aten/daily_images
DATE_DIR=$(date +"%d-%m-%Y")

echo "BEGIN: $DATE_DIR" >> /tmp/daily_builds

echo "Remove old ws"
cd $BUILD_DIR_ROOT
rm -rf *
git clone git@github.com:Arrcus/arrcus_rel.git -b td4-dev-tfno
cd $BUILD_DIR
echo "Pull rel branch"
git pull
make init
echo "Pull ONL-XC branch"
cd $BUILD_DIR/ONL-xc
git pull
echo "Pull ONL-standalone branch"
cd $BUILD_DIR/ONL-standalone
git pull
echo "Pull bcmsdk branch"
cd $BUILD_DIR/packages/bcmsdk/
git pull
echo "Pull libnl3 branch"
cd $BUILD_DIR/packages/libnl3/
git pull
echo "Pull arrcus-sw branch"
cd $BUILD_DIR/packages/arrcus-sw
git pull
echo "Commit current changes"
cd $BUILD_DIR/
git add .
git commit -m "$DATE_DIR"
echo "Start make world"
make world
ssh vijayr@infra1 'mkdir ~/daily_images/'$DATE_DIR
scp $BUILD_DIR/images/ONL-standalone.bcm.ARCOS-arrcus-stretch-ufi-td4*AMD64_INSTALLED_INSTALLER vijayr@infra1:~/daily_images/$DATE_DIR/
echo "END: $DATE_DIR" >> /tmp/daily_builds
