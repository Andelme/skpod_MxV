gcc MxV-omp.c -std=c11 -fopenmp -O2 -o MxV-omp
#gcc-9 MxV-omp.c -std=c11 -fopenmp -O2 -o MxV-omp
#mpixlc_r MxV-omp.c -qsmp=omp -O2 -o MxV-omp				
#xlc_r MxV-omp.c -std=c11 -qsmp=omp -O2 -o MxV-omp				
echo === START === > LeatherClub.txt
echo "" >> LeatherClub.txt

for s in 1000 5000 10000 20000
do
    for t in 1 2 3 6
    do
        echo [$t $s] >> LeatherClub.txt
        #mpisubmit.bg MxV-omp -n 5 -m smp -w 900 --stdout MxV$t-$s.out -- $t $s
        #mpisubmit.pl MxV-omp -p 1 -t $t -w 900 --stdout MxV$t-$s.out -- $t $s
        #sleep 20
        for i in {1..5}
        do
            echo running $t $s [$i/5]
            ./MxV-omp $t $s >> LeatherClub.txt
        done
        echo "" >> LeatherClub.txt
    done
done

echo === END === >> LeatherClub.txt
