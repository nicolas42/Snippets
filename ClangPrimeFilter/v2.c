// Prime Filter with dynamic memory allocation

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
// timing a function
// http://stackoverflow.com/questions/12743063/using-clock-to-measure-execution-time
// 

void primeFilter(int UPPER);

int main()
{
	time_t start, end, duration;
	start = time(0);
	
	primeFilter(1000000);
	
	end = time(0);
	duration = end - start;
	printf("%ld", duration);
}

void primeFilter(int UPPER)
{
	// int UPPER=100000; // upper limit on numbers to filter
	int cap = UPPER/10; // initial capacity - a wild guess about the density of primes
	
	int* primes;
	primes = (int*) malloc(cap*sizeof(int));
	primes[0]=2;
	int len=1; // length of primes

	int isPrime;
	int p; // indexes
	int i;


	for(i=3;i<UPPER;++i) // candidates
	{
		isPrime = 1;
		for(p=0;p<len;++p)
		{
			if(i%primes[p]==0)
			{
				isPrime=0;
				break;
			}
		}
		if(isPrime==1)
		{
			if(len+1>=cap){
				cap *= 2;
				primes = (int*) realloc(primes, cap*sizeof(int));
			}
			primes[len] = i;
			len += 1;
		}

	}

	for(i=0;i<len;++i)
	{
		printf("%d ", primes[i]);
	}
	printf("\n");


}
