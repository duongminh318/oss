#Bai 16:
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
echo "[1] Check tang"
echo "[2] Check giam"
echo "[3] Check doi xung"
echo ""

echo -n "Nhap so: "
read so
echo ""

if [ $so -eq 1 ]
then
	dem=1
	for ((i=0;i<n;i++))
	do
		if [ ${mang[i]} -gt ${mang[`expr $i + 1`]} ]
		then
			dem=-1
		fi
	done
	
	if [ $dem -eq 1 ]; then
		echo "Mang tang dan"
	else
		echo "Mang khong tang dan"
	fi
elif [ $so -eq 2 ]
then
	dem=1
	for ((i=0;i<n;i++))
	do	

		if [ ${mang[i]} -lt ${mang[`expr $i + 1`]} ] 
		then
			dem=-1
		fi	
	done
	
	if [ $dem -eq 1 ]; then
		echo "Mang giam dan"
	else
		echo "Mang khong giam dan"
	fi	
elif [ $so -eq 3 ]
then
	dem=1
	for ((i=0;i<n/2;i++))
	do
		if [ ${mang[i]} -ne ${mang[`expr $n - $i - 1`]} ]; then
			dem=-1
		fi
	done
	
	if [ $dem -eq 1 ]; then
		echo "Mang doi xung"
		echo -n "In mang: "
		echo ${mang[@]}
	else
		echo "Mang khong doi xung"
	fi
	exit
else
     echo "So khong co trong Menu!"
fi

