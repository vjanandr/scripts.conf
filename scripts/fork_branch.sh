#!/bin/bash
BRANCH_NAME=$1
git clone git@github.com:vijayr-arrcus/arrcus_sw.git
cd arrcus_sw/
git remote add Arrcus/arrcus_sw git@github.com:Arrcus/arrcus_sw.git
git fetch Arrcus/arrcus_sw
git checkout -b ${BRANCH_NAME} Arrcus/arrcus_sw/${BRANCH_NAME}
git push origin ${BRANCH_NAME}

rm -rf *

git clone git@github.com:vijayr-arrcus/arrcus_sw.git -b ${BRANCH_NAME}
