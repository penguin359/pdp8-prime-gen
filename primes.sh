#!/bin/sh

macro8x primes.pal
ret=$?
if [ $ret -ne 0 ]; then
	echo "ERROR" >&2
	exit 1
fi
pdp8 primes.cmd
