#Bai 15: UCLN mang
#!/bin/bash
echo -n "Nhap n: "
read n
declare -a arr


for ((i=0;i<n;i++))
do
	echo -n "Nhap phan tu thu `expr $i + 1`: "
	read arr[$i]
done

for ((i = 0; i<n; i++))
do  
    for((j = 0; j<n-i-1; j++))
    do
    
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done
echo -n "Mang sau khi sap xep tang dan: "
echo "${arr[*]}"
