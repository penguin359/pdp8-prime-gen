#!/bin/sh

cd $(dirname $0)
macro8x -d print.pal
ret=$?
if [ $ret -ne 0 ]; then
	#echo "ERROR" >&2
	cat print.err >&2
	exit 1
fi
pdp8 print.cmd
macro8x -d -r print.pal
./rim2coe print.rim print.coe
