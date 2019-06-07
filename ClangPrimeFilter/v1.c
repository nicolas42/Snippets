// Prime Filter

#include <stdio.h>

int main()
{
	// ps primes, pl length of primes

	int ps[10000];
	ps[0]=2;
	int pl=1;
	int p;
	int i;
	int isPrime;


	for(i=3;i<10000;++i)
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
