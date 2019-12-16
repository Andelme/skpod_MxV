mpicc MxV-MPI.c -std=c11 -O2 -o MxV-MPI
echo === START === > LeatherClub.txt
echo "" >> LeatherClub.txt

for s in 1000 2000 4000 6000 8000 10000 12000 14000 16000 18000 20000 22000 24000 26000 28000 30000 32000 34000 36000 38000 40000
do
    for p in 1 2 3 6
    do
        echo [$p $s] >> LeatherClub.txt
        for i in {1..5}
        do

        echo running $t $s [$i/5]
        mpirun -n $p ./MxV-MPI $s >> LeatherClub.txt
        done
        echo "" >> LeatherClub.txt
    done
done

echo === END === >> LeatherClub.txt
