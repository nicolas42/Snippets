// Prime Filter

#include <stdio.h>

int main()
{
	// ps primes, pl length of primes
	int N = 1000; // NumberOfPrimesToCalculate 
	
	int ps[N]; // density of primes is obviously not 100% but this is safest (4 kilobytes)
	ps[0]=2;
	int pl=1;
	int p;
	int i;
	int isPrime;


	for(i=3;i<N;++i)
	{
		isPrime = 1;
		for(p=0;p<pl;++p)
		{
			if(i%ps[p]==0)
			{
				isPrime=0;
				break;
			}
		}
		if(isPrime==1)
		{
			ps[pl] = i;
			pl += 1;
		}

	}

	for(i=0;i<pl;++i)
	{
		printf("%d ", ps[i]);
	}
	printf("\n");


}
