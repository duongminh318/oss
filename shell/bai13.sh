#!/bin/bash
declare -a a
echo -n "Nhap n: "
read n
for ((i=1;i<=n;i++));do
	echo -n "a[$i]= "
	read m
	a[$i]=$m
done
echo -n "Mang chua sap xep: "
echo ${a[*]}
for ((i=1;i<=n-1;i++));do
    for ((j=i+1;j<=n;j++));do
	
		tam=${a[$i]}
		a[$i]=${a[$j]}
		a[$j]=$tam
		
    
    done
done
echo ${a[*]}

