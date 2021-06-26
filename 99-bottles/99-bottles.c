#include <stdio.h>

void singTheSong(int b){
	if (b > 1) {
		printf("%d bottles of beer on the wall, %d bottles of beer.\n",
			b, b);
		printf("Take one down and pass it around, %d bottles of beer on the wall.\n", b-1);
	} else if (b == 1) {
		printf("1 bottle of beer on the wall, 1 bottle of beer.\n");
		printf("Take one down and pass it around, no more bottles of beer on the wall.\n");
	} else {
		printf("No more bottles of beer on the wall, no more bottles of beer.\n");
		printf("Go to the store and buy some more, 99 bottles of beer on the wall.\n");
	}
}

int main(int argc, char** argv){
    for (int b = 99; b >= 0; --b){
        singTheSong(b);
		printf("\n");
    }
    return 0;
}

