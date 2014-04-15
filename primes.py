#!/usr/bin/python

a = [True] * 4096;  # Start by assuming that all numbers are prime
a[0] = False;       # Except that 0 is not prime
a[1] = False;       # And neither is 1

for i in range(len(a)):
	if a[i]:
		for j in range(i*i, len(a), i):
			a[j] = False;
		print i
