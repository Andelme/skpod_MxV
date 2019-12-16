#include <stdio.h>
#include <stdlib.h>
#include <mpi.h>

int proc_num, rank;

void 
MxV_body(float* p_m, float* v, float* p_res, int N, int p_n) 
{
    for (int i = 0; i < p_n; ++i) {
        for (int j = 0; j < N; ++j) {
            p_res[i] += p_m[i * N + j] * v[j];
        } 
    }
}
void
generate(float *m, float *v, int N) 
{
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            m[i * N + j] = ((float) i * (j + 2) + 2) / N;
        }
        v[i] = ((float) i + 2) / N;    
    }
}
void
crop(int N, int *p_rows) 
{
    int rest_rows = N;
    p_rows[0] = N / proc_num;
    for (int i = 1; i < proc_num; ++i) {
        rest_rows -= p_rows[i - 1];
        p_rows[i] = rest_rows / (proc_num - i);
    }
}

int 
main(int argc, char** argv) 
{
    float *matrix, *result;
    double st_time, end_time;
    int N;

    MPI_Init(&argc, &argv);
    MPI_Comm_size(MPI_COMM_WORLD, &proc_num);
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    
    sscanf(argv[1], "%u", &N);

    float *vector = calloc(N, sizeof(float));
    
    if (rank == 0) {
        matrix = calloc(N * N, sizeof(float));
        generate(matrix, vector, N);
    }

    int *p_rows = calloc(proc_num, sizeof(int));
    crop(N, p_rows);
    
    float *p_matrix = calloc(p_rows[rank] * N, sizeof(float));
    float *p_result = calloc(p_rows[rank], sizeof(float));

    int *p_send_num = calloc(proc_num, sizeof(int));
    int *p_send_idx = calloc(proc_num, sizeof(int));
    
    p_send_num[0] = p_rows[0] * N;
    p_send_idx[0] = 0;
    for (int i = 1; i < proc_num; ++i) {
        p_send_num[i] = p_rows[i] * N;
        p_send_idx[i] = p_send_idx[i - 1] + p_send_num[i - 1];
    }

    MPI_Bcast(vector, N, MPI_FLOAT, 0, MPI_COMM_WORLD);
    MPI_Scatterv(matrix , p_send_num, p_send_idx, MPI_FLOAT, p_matrix, p_send_num[rank], MPI_FLOAT, 0, MPI_COMM_WORLD);
    free(p_send_num);
    free(p_send_idx);
    if (rank == 0) {
        free(matrix);
    }

    if (rank == 0) {
        st_time = MPI_Wtime();
    }
    MxV_body(p_matrix, vector, p_result, N, p_rows[rank]);
    MPI_Barrier(MPI_COMM_WORLD);
    if (rank == 0) {
        end_time = MPI_Wtime();
        printf("%lf\n", end_time - st_time);
    }

    int *p_rec_num = calloc(proc_num, sizeof(int));
    int *p_rec_idx = calloc(proc_num, sizeof(int));

    p_rec_num[0] = p_rows[0];
    p_rec_idx[0] = 0;
    for (int i = 1; i < proc_num; ++i) {
        p_rec_num[i] = p_rows[i];
        p_rec_idx[i] = p_rec_idx[i - 1] + p_rec_num[i - 1];
    }

    if (rank == 0) {
        result = calloc(N, sizeof(float));
    }
    MPI_Gatherv(p_result, p_rec_num[rank], MPI_FLOAT, result, p_rec_num, p_rec_idx, MPI_FLOAT, 0, MPI_COMM_WORLD);
    free(p_rec_num);
    free(p_rec_idx);
    /*if (rank == 0) {
        for (int i = 0; i < N; ++i) {
            printf("%f\n", result[i]);
        }
    }*/
    if (rank == 0) {
        free(result);
    }
    free(p_matrix);
    free(vector);
    free(p_rows);
    free(p_result);
    MPI_Finalize();
    return 0;
}
