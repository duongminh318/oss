#!/bin/bash
is_prime(){
   n=$1
   if [ $n -lt 1 ];then
	return 0
   fi
   for ((i=2;i<n;i++));do
   	let "k=$n%$i"
	if [ $k -eq 0 ];then
		return 0
	fi
   done
   return 1	
}

echo -n "So nguyen to: "
for arg
do
is_prime $arg
	if [ $? -ne 0 ];then
		echo -n "$arg "	
	fi
done	
echo ""

