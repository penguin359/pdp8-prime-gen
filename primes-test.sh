#!/bin/sh

./primes.sh | tr -d '\r' | awk 'BEGIN {P=0} /^END$/ {P=0} P==1 {print} /^BEGIN$/ {P=1}' | diff - primes-ref
