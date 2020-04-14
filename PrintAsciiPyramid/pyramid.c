#include <stdio.h>
#include <string.h>
int asciiPyramid(char* a);

int main(){

	int i;
	const int N = 4;

	char* tests[N] = {
		"//\\\\/\\\\/\\\\\\\\",
		"/\\\\\\\\\\\\",
		"//\\\\\\\\///\\\\/\\\\",
		"/////////////\\\\",
	};

	for(i=0;i<=N-1;i++){
		asciiPyramid(tests[i]);
	}
}
int asciiPyramid(char* a){

	// char a[] = "//\\\\/\\\\/\\\\\\\\";
	
	int width = strlen(a);
	// make width even
	if (width%2==1) width--;
	int height = width/2;
	char table[height][width];

	int x,y;
	int beg = 1;
	int end = width-2;
	// beginning b and end e of line


	// initialize to ' '
	for(y=0; y<=height-1; y++)
		for(x=0; x<=width-1; x++)
			table[y][x] = ' ';
			
	// set last row to argument
	for(x=0; x<=width-1; x++){
		table[height-1][x] = a[x];
	}

	// make pyramid
	for(y=height-1; y>=1; y--){
		table[y-1][beg] = '/';
		for (x=beg+1; x<=end-1; x++) {
			if (table[y][x] == '/') { 
				table[y-1][x] = '\\';
			}
			if (table[y][x] == '\\') { 
				table[y-1][x] = '/';
			}		
		}
		table[y-1][end] = '\\';
		beg++;
		end--;
	}

	// print
	for(y=0; y<=height-1; y++){
		for(x=0; x<=width-1; x++){
			printf("%c", table[y][x]);
		}
		printf("\n");
	}
	
	return 0;
}