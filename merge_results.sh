echo === START === > LeatherClub.txt

for s in 1000 2000 4000 6000 8000 10000 12000 14000 16000 18000 20000 22000 24000 26000 28000 30000 32000 34000 36000 38000 40000
do
    for p in 1 2 4 8 16
    do
        echo " " >> LeatherClub.txt
        echo [$p $s] >> LeatherClub.txt
            cat MxV$p-$s.out | grep "\[\[........\]\]" >> LeatherClub.txt
    done
done
echo " " >> LeatherClub.txt
echo === END === >> LeatherClub.txt
