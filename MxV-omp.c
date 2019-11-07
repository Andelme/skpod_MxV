//#include "MxV-omp.h"
#include <omp.h>
#include <stdio.h>
#include <stdlib.h>

#define N 40000
void
init_data(float m[N][N], float v[N]) 
{
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            m[i][j] = ((float) i * (j + 2) + 2) / N;
        }
        v[i] = ((float) i + 2) / N;            
    }
    return;
}

void kernel_MxV(float m[N][N], float v[N], float res[N]) {
#pragma omp parallel for
    for(int i = 0; i < N; ++i) {
        for(int j = 0; j < N; ++j) {
            res[i] += v[j] * m[i][j];
        }
    }
}
int
main(int argc, char **argv) 
{
    omp_set_num_threads((int)(argv[1][0] - '0'));
    
    float (*matrix)[N][N] = calloc(N * N, sizeof(float));
    float (*vector)[N] = calloc(N, sizeof(float));
    float (*result)[N] = calloc(N, sizeof(float));

    init_data(*matrix, *vector); 

    double bench_t1 = omp_get_wtime();
    kernel_MxV(*matrix, *vector, *result);
    double bench_t2 = omp_get_wtime();

    printf("Time in seconds: %.3f\n", bench_t2 - bench_t1); 

    free(matrix);
    free(vector);
    return 0;
}
