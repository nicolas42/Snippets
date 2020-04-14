// Prime Filter with dynamic memory allocation
// dynamic allocation - http://www.tutorialspoint.com/c_standard_library/c_function_realloc.htm
// golang slices - https://tour.golang.org/moretypes/11
// dynamically allocate c struct - http://stackoverflow.com/questions/1979879/dynamically-allocate-c-struct
// argc argv - http://stackoverflow.com/questions/3024197/what-does-int-argc-char-argv-mean
// argc = 1 without any additional arguments
// printf("%d %s %s %d\n", argc, argv[0], argv[1], argv[1] == NULL);

// next step - make typedef with variable datatype

#include <stdio.h>
#include <stdlib.h>

typedef struct {
	int* data;
	int len;
	int cap;
	int ind;
	int typ;
} slice;

slice* filterPrime(int UPPER);
slice* printSlice(slice* a);
slice* filterPrimeVerbose(int UPPER, int verbose);


int main(int argc, char** argv)
{

	int UPPER = 1000; // default value

	if ( ( argc >= 2 ) && ( atoi(argv[1]) > 0 ) )
	{
		UPPER = atoi(argv[1]);
	}	

	filterPrimeVerbose(UPPER,1);

	return 0;
}

slice* printSlice(slice* a)
{
	int len = a->len;
	int* data = a->data;
	int i;

	for(i=0;i<len;++i)
	{
		printf("%d ", data[i]);
	}
	printf("\n");
	return a;

}

slice* filterPrime(int UPPER)
{
	return filterPrimeVerbose(UPPER,0);
}

slice* filterPrimeVerbose(int UPPER, int verbose)
{
	// Prints primes as they are produced if verbose=1

	// int UPPER=100000; // upper limit on numbers to filter
	int cap = UPPER/10; // initial capacity - density of primes guess
	int* primes;
	primes = (int*) malloc(cap*sizeof(int));
	primes[0]=2;
	int len=1; // length of primes

	int isPrime;
	int p; // indexes
	int i;

	slice *ret = (slice*)malloc(sizeof(slice)); // return value


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
			if(len>=cap){
				cap *= 2;
				primes = (int*) realloc(primes, cap*sizeof(int));
			}
			primes[len] = i;
			len += 1;
			if(verbose==1)
			{
				printf("%d ", i);
			}
		}

	}
	if(verbose==1)
	{
		printf("\n");
	}

	// return value
	ret->data = primes;
	ret->len = len;
	ret->cap = cap;
	ret->ind = 0;

	return ret;
}
