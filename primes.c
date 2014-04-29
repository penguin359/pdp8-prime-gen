#include <stdio.h>

int main()
{
	unsigned char primes[4096/8];
	unsigned char val;
	int i, j;

	/* Assume all numbers are prime until proven otherwise */
	for(i = 0; i < 4096/8; i++)
		primes[i] = 0xff;
	primes[0] &= 0xfc; /* 0 and 1 are not prime */

	for(i = 0; i < 4096; i++) {
		val = primes[i/8] & (1 << (i%8));
		/* If i is a prime, mark all multiples of it as not a prime */
		if(val) {
			//printf("%4d\n", i);
			printf("%d\n", i);
			for(j = (i << 1); j < 4096; j += i)
				primes[j/8] &= ~(1 << (j%8));
		}
	}

	return 0;
}
