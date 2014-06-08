#!/bin/sh

cd $(dirname $0)
macro8x -d hello.pal
ret=$?
if [ $ret -ne 0 ]; then
	#echo "ERROR" >&2
	cat hello.err >&2
	exit 1
fi
pdp8 hello.cmd
macro8x -d -r hello.pal
