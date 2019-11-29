echo === START === > LeatherClub.txt

for s in 1000 5000 10000 20000 40000 60000 
do
    for t in 1 2 4 8 16 32 64 128
    do
        echo " " >> LeatherClub.txt
        echo [$t $s] >> LeatherClub.txt
        cat MxV$t-$s.out >> LeatherClub.txt
    done
done
echo " " >> LeatherClub.txt
echo === END === >> LeatherClub.txt

rm *.out
rm *.err
