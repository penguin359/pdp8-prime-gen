#!/bin/sh

#./primes.sh | tr -d '\r' | awk 'BEGIN {P=0} /^END$/ {P=0} P==1 {print} /^BEGIN$/ {P=1}' | diff - primes-ref
./primes.sh | tr -d '\r' | awk 'BEGIN {P=0} /^END$/ {P=0} P==1 {print} /^BEGIN$/ {P=1}' > pdp8-out
cat pdp8-out
if diff pdp8-out primes-ref; then
	echo "Test passed."
else
	echo "ERROR: Output did not match reference."
	exit 1
fi
