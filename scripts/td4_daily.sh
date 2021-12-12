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

mkdir -p $BUILD_DIR_ROOT
echo "Remove old ws"
cd $BUILD_DIR_ROOT
rm -rf ~/rel/*
cd $BUILD_DIR_ROOT
git clone git@github.com:Arrcus/arrcus_rel.git -b td4-dev-tfno
cd $BUILD_DIR
echo "Pull rel branch"
git pull
make init
make update
cd $BUILD_DIR/
git add .
git commit -m "$DATE_DIR"
echo "Start make world"
make sa
ssh vijayr@infra1 'mkdir ~/daily_images/td4-dev/'$DATE_DIR
scp $BUILD_DIR/images/ONL-standalone.bcm.ARCOS-arrcus-stretch-ufi-td4*AMD64_INSTALLED_INSTALLER vijayr@infra1:~/daily_images/td4-dev/$DATE_DIR
echo "END: $DATE_DIR" >> /tmp/daily_builds
