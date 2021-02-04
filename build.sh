#!/bin/sh

if [ -z `grep halpc98 boot/bootdata/livecd.ini` ]; then
    sed -i -e 's/^Options=\(.*\)$/Options=\/HAL=halpc98.dll \1/g' boot/bootdata/livecd.ini
fi
./configure.sh -DSARCH=pc98
cd output-MinGW-i386
ninja pc98bootfdd
ninja livecd
