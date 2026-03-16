#!/bin/bash

rm -rf /data/xbmc || true
rm -rf /data/pvr.zattoo || true
cd /data && git clone --branch Omega --depth 1 https://github.com/xbmc/xbmc
cd /data && git clone --branch Omega --depth 1 https://github.com/rbuehlma/pvr.zattoo
cd /data/pvr.zattoo && mkdir build && cd build
cmake -DADDONS_TO_BUILD=pvr.zattoo -DADDON_SRC_PREFIX=../.. -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=../../xbmc/addons -DPACKAGE_ZIP=1 ../../xbmc/cmake/addons
make -j4$(nproc) package-pvr.zattoo
cp -r /data/pvr.zattoo/build/build/zips/* /output
chown -R 1000:1000 /output
