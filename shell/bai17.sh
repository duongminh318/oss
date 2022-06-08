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

for ((i=0;i<n;i++))
do
	arrI=${mang[i]}
	if [ `expr $arrI % 2` -eq 1 ];then
		unset mang[i]
	fi
done
echo -n "Mang sau khi bo so le: "
echo -n ${mang[@]}
echo ""
