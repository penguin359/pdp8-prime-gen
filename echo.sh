#!/bin/sh

cd $(dirname $0)
macro8x -d echo.pal
ret=$?
if [ $ret -ne 0 ]; then
	#echo "ERROR" >&2
	cat echo.err >&2
	exit 1
fi
macro8x -d -r echo.pal
./rim2coe echo.rim echo.coe
pdp8 echo.cmd
