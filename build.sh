#!/bin/sh

sed -i -e 's/^Options=\(.*\)$/Options=\/HAL=halpc98.dll \1/g' boot/bootdata/livecd.ini
./configure.sh -DSARCH=pc98
cd output-MinGW-i386
ninja pc98bootfdd
ninja livecd
