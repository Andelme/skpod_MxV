gcc MxV-omp.c -std=c11 -fopenmp -O2 -o MxV-omp

echo === START === > LeatherClub.txt
echo "" >> LeatherClub.txt

echo [1 1000] >> LeatherClub.txt
for i in {1..5}
    do
        ./MxV-omp 1 1000 >> LeatherClub.txt
        echo 1 1000 [$i/5]
done
echo "" >> LeatherClub.txt

echo [1 1000] >> LeatherClub.txt
for i in {1..5}
    do
        ./MxV-omp 2 1000 >> LeatherClub.txt
        echo 2 1000 [$i/5]
done
echo "" >> LeatherClub.txt

echo [1 1000] >> LeatherClub.txt
for i in {1..5}
    do
        ./MxV-omp 3 1000 >> LeatherClub.txt
        echo 3 1000 [$i/5]
done
echo "" >> LeatherClub.txt

echo [1 1000] >> LeatherClub.txt
for i in {1..5}
    do
        ./MxV-omp 6 1000 >> LeatherClub.txt
        echo 6 1000 [$i/5]
done
echo "" >> LeatherClub.txt

echo [1 1000] >> LeatherClub.txt
for i in {1..5}
    do
        ./MxV-omp 12 1000 >> LeatherClub.txt
        echo 12 1000 [$i/5]
done
echo "" >> LeatherClub.txt

echo [1 1000] >> LeatherClub.txt
for i in {1..5}
    do
        ./MxV-omp 1 5000 >> LeatherClub.txt
        echo 1 5000 [$i/5]
done
echo "" >> LeatherClub.txt

echo [1 1000] >> LeatherClub.txt
for i in {1..5}
    do
        ./MxV-omp 2 5000 >> LeatherClub.txt
        echo 2 5000 [$i/5]
done
echo "" >> LeatherClub.txt

echo [1 1000] >> LeatherClub.txt
for i in {1..5}
    do
        ./MxV-omp 3 5000 >> LeatherClub.txt
        echo 3 5000 [$i/5]
done
echo "" >> LeatherClub.txt

echo [1 1000] >> LeatherClub.txt
for i in {1..5}
    do
        ./MxV-omp 6 5000 >> LeatherClub.txt
        echo 6 5000 [$i/5]
done
echo "" >> LeatherClub.txt

echo [1 1000] >> LeatherClub.txt
for i in {1..5}
    do
        ./MxV-omp 12 5000 >> LeatherClub.txt
        echo 12 5000 [$i/5]
done
echo "" >> LeatherClub.txt

echo [1 1000] >> LeatherClub.txt
for i in {1..5}
    do
        ./MxV-omp 1 10000 >> LeatherClub.txt
        echo 1 10000 [$i/5]
done
echo "" >> LeatherClub.txt

echo [1 1000] >> LeatherClub.txt
for i in {1..5}
    do
        ./MxV-omp 2 10000 >> LeatherClub.txt
        echo 2 10000 [$i/5]
done
echo "" >> LeatherClub.txt

echo [1 1000] >> LeatherClub.txt
for i in {1..5}
    do
        ./MxV-omp 3 10000 >> LeatherClub.txt
        echo 3 10000 [$i/5]
done
echo "" >> LeatherClub.txt

echo [1 1000] >> LeatherClub.txt
for i in {1..5}
    do
        ./MxV-omp 6 10000 >> LeatherClub.txt
        echo 6 10000 [$i/5]
done
echo "" >> LeatherClub.txt

echo [1 1000] >> LeatherClub.txt
for i in {1..5}
    do
        ./MxV-omp 12 10000 >> LeatherClub.txt
        echo 12 10000 [$i/5]
done
echo "" >> LeatherClub.txt

echo [1 1000] >> LeatherClub.txt
for i in {1..5}
    do
        ./MxV-omp 1 20000 >> LeatherClub.txt
        echo 1 20000 [$i/5]
done
echo "" >> LeatherClub.txt

echo [1 1000] >> LeatherClub.txt
for i in {1..5}
    do
        ./MxV-omp 2 20000 > LeatherClub.txt
        echo 2 20000 [$i/5]
done
echo "" >> LeatherClub.txt

echo [1 1000] >> LeatherClub.txt
for i in {1..5}
    do
        ./MxV-omp 3 20000 >> LeatherClub.txt
        echo 3 20000 [$i/5]
done
echo "" >> LeatherClub.txt

echo [1 1000] >> LeatherClub.txt
for i in {1..5}
    do
        ./MxV-omp 6 20000 >> LeatherClub.txt
        echo 6 20000 [$i/5]
done
echo "" >> LeatherClub.txt

echo [1 1000] >> LeatherClub.txt
for i in {1..5}
    do
        ./MxV-omp 12 20000 >> LeatherClub.txt
        echo 12 20000 [$i/5]
done
echo "" >> LeatherClub.txt

echo [1 1000] >> LeatherClub.txt
for i in {1..5}
    do
        ./MxV-omp 1 40000 >> LeatherClub.txt
        echo 1 40000 [$i/5]
done
echo "" >> LeatherClub.txt

echo [1 1000] >> LeatherClub.txt
for i in {1..5}
    do
        ./MxV-omp 2 40000 >> LeatherClub.txt
        echo 2 40000 [$i/5]
done
echo "" >> LeatherClub.txt

echo [1 1000] >> LeatherClub.txt
for i in {1..5}
    do
        ./MxV-omp 3 40000 >> LeatherClub.txt
        echo 3 40000 [$i/5]
done
echo "" >> LeatherClub.txt

echo [1 1000] >> LeatherClub.txt
for i in {1..5}
    do
        ./MxV-omp 6 40000 >> LeatherClub.txt
        echo 6 40000 [$i/5]
done
echo "" >> LeatherClub.txt

echo [1 1000] >> LeatherClub.txt
for i in {1..5}
    do
        ./MxV-omp 12 40000 >> LeatherClub.txt
        echo 12 40000 [$i/5]
done
echo "" >> LeatherClub.txt

echo [1 1000] >> LeatherClub.txt
for i in {1..5}
    do
        ./MxV-omp 1 60000 >> LeatherClub.txt
        echo 1 60000 [$i/5]
done
echo "" >> LeatherClub.txt

echo [1 1000] >> LeatherClub.txt
for i in {1..5}
    do
        ./MxV-omp 2 60000 >> LeatherClub.txt
        echo 2 60000 [$i/5]
done
echo "" >> LeatherClub.txt

echo [1 1000] >> LeatherClub.txt
for i in {1..5}
    do
        ./MxV-omp 3 60000 >> LeatherClub.txt
        echo 3 60000 [$i/5]
done
echo "" >> LeatherClub.txt

echo [1 1000] >> LeatherClub.txt
for i in {1..5}
    do
        ./MxV-omp 6 60000 >> LeatherClub.txt
        echo 6 60000 [$i/5]
done
echo "" >> LeatherClub.txt

echo [1 1000] >> LeatherClub.txt
for i in {1..5}
    do
        ./MxV-omp 12 60000 >> LeatherClub.txt
        echo 12 60000 [$i/5]
done
echo "" >> LeatherClub.txt


echo === END === >> LeatherClub.txt
echo "" >> LeatherClub.txt
