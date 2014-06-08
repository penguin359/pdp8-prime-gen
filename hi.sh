#!/bin/sh

cd $(dirname $0)
macro8x -d hi.pal
ret=$?
if [ $ret -ne 0 ]; then
	#echo "ERROR" >&2
	cat hi.err >&2
	exit 1
fi
pdp8 hi.cmd
macro8x -d -r hi.pal
./rim2coe hi.rim hi.coe
