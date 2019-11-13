#include <omp.h>
#include <stdio.h>
#include <stdlib.h>

#define N 100000
void
init_data(float **m, float *v) 
{
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            m[i][j] = ((float) i * (j + 2) + 2) / N;
        }
        v[i] = ((float) i + 2) / N;            
    }
    return;
}

void kernel_MxV(float **m, float *v, float *res) {
int i, j;
#pragma omp parallel for private(i, j)
    for(i = 0; i < N; ++i) {
        for(j = 0; j < N; ++j) {
            res[i] += v[j] * m[i][j];
        }
    }
}

int
main(int argc, char **argv) 
{
    omp_set_num_threads((int)(argv[1][0] - '0'));
    
    float *vector = calloc(N, sizeof(float));
    float *result = calloc(N, sizeof(float));
    
    float **matrix = calloc(N, sizeof(float *));
    for (size_t i = 0; i < N; ++i) {
        matrix[i] = calloc(N, sizeof(float));
    }

    init_data(matrix, vector); 

    double bench_t1 = omp_get_wtime();
    kernel_MxV(matrix, vector, result);
    double bench_t2 = omp_get_wtime();

    printf("Time in seconds: %.3f\n", bench_t2 - bench_t1); 

    free(matrix);
    free(vector);
    return 0;
}
