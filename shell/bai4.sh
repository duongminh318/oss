#bai 4
echo -n "Ban muon in bang cuu chuong may: "
read so
for ((i=1;i<=10;i++))
do
      echo "$so x $i = `expr $so \* $i`"
done
