#Bai 14:
#!/bin/bash
echo -n "Nhap n: "
read n
declare -a mang


for ((i=0;i<n;i++))
do
	echo -n "Nhap phan tu thu `expr $i + 1`: "
	read mang[$i]
done

echo ""

echo -n "Cac phan tu chan la: "
for ((i=0;i<n;i++))
do
	arrI=${mang[i]}
	if [ `expr $arrI % 2` -eq 0 ]; then
		echo -n "${mang[i]} "
	fi
done

echo ""

echo -n "Cac phan tu le la: "
for ((i=0;i<n;i++))
do
	arrI=${mang[i]}
	if [ `expr $arrI % 2` -eq 1 ]; then
		echo -n "${mang[i]} "
	fi
done

echo ""

echo -n "Tong cac phan tu trong mang: "
sum=0
for ((i=0;i<n;i++))
do
	arrI=${mang[i]}
	sum=$(($sum+$arrI))
done
echo "$sum "

