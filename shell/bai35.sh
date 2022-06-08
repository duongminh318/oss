#!/bin/sh
echo "CT liet ke tham so => dung while"
count=1
while [ $count -le $# ]
do
	echo -n "Day la tham so thu $count: "
	eval echo \$$count
	count=$(($count+1))
	
done

echo "CT liet ke tham so => dung for"
count=1
for arg in "$@"
do
	echo "day la tham so thu $count: $arg" 
	count=$(($count+1))
done	

echo "CT liet ke tham so => dung while & lenh SHIFT"
count=1 
while [ "$#" -ne 0 ] 
do 
echo "day la tham so thu $count: $1" 
count=$(($count + 1)) 
shift 
done




