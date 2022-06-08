#Bai 7: giai thua
echo -n "Nhap n: "
read n
sum=1;
for ((i=1;i<=n;i++))
do
	sum=$(($sum * $i))
done
echo "Ket qua la: $sum"
