#Bai 15: UCLN mang
#!/bin/bash
echo -n "Nhap n: "
read n
declare -a mang


for ((i=0;i<n;i++))
do
	echo -n "Nhap phan tu thu `expr $i + 1`: "
	read mang[$i]
done


for ((i=0;i<n;i++))
do
	echo "Phan tu thu `expr $i + 1`: ${mang[i]}"
done


max=${mang[0]}
min=${mang[0]}

for ((i=0;i<n;i++))
do
	arrI=${mang[i]}
	if [ $max -lt $arrI ]; then
		max=$arrI
	fi
done

echo "So max = $max"

min=$max
for ((i=0;i<n;i++))
do
	a=$max
	b=${mang[i]}
	while [ $a -ne $b ]
	do
		if [ $a -gt $b ]
			then
				a=$(($a-$b))

			else
				b=$(($b-$a))
		fi
	done
	
	if [ $a -lt $min ]; then
		min=$a
	fi	
done
echo "UCLN la: $min"

