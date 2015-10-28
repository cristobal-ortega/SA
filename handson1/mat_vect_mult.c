#include <stdio.h>
#include <time.h>
#include <stdlib.h>

void print_matrix(int* matrix, int nrows, int ncolumns) {
	printf("===MATRIX===\n");
	for(int i = 0; i < nrows; ++i){
		for(int j = 0; j < ncolumns; ++j)
			printf("%i ",matrix[i*nrows+j]);
		printf("\n");
	}

}

void print_vector(int* vector, int ncolumns) {
	printf("===VECTOR===\n");
	for(int j = 0; j < ncolumns; ++j)
		printf("%i ",vector[j]);
	printf("\n");

}

int main(int argc, char **argv) {
	int nrows = atoi(argv[1]);
	int ncolumns = atoi(argv[2]);

	int *matrix = malloc(nrows*ncolumns*sizeof(int));
	int *vector = malloc(ncolumns*sizeof(int));

	srand(time(NULL));

	for(int i = 0; i < nrows; ++i)
		for(int j = 0; j < ncolumns; ++j){
			matrix[i*nrows+j] = rand();
			vector[j] = 1;
		}

	
	
	for(int i = 0; i < nrows; ++i)
		for(int j = 0; j < ncolumns; ++j)
			matrix[i*nrows+j] *= vector[j];

	
}
