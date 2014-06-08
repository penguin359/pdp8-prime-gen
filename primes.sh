#!/bin/sh

cd $(dirname $0)
macro8x -d primes.pal
ret=$?
if [ $ret -ne 0 ]; then
	#echo "ERROR" >&2
	cat primes.err >&2
	exit 1
fi
pdp8 primes.cmd
macro8x -d -r primes.pal
./rim2coe primes.rim primes.coe
