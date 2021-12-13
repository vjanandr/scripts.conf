#!/bin/bash

##
# Interactive search.
# Usage: `ff` or `ff <folder>`.
#
BUILD_DIR=~/rel/arrcus_rel/
BUILD_DIR_ROOT=~/rel/
IMAGE_DIR=~/daily_images
DATE_DIR=$(date +"%d-%m-%Y")

echo "BEGIN: $DATE_DIR" >> /tmp/daily_builds

cd $BUILD_DIR/
make update
cd $BUILD_DIR/
git add .
git commit -m "$DATE_DIR"
echo "Start make world"
make sa
ssh vijayr@infra1 'mkdir ~/daily_images/td4-dev/'$DATE_DIR
scp $BUILD_DIR/images/ONL-standalone.bcm.ARCOS-arrcus-stretch-ufi-td4*AMD64_INSTALLED_INSTALLER vijayr@infra1:~/daily_images/td4-dev/$DATE_DIR
echo "END: $DATE_DIR" >> /tmp/daily_builds
