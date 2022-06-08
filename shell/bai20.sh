#!/bin/bash
echo -e -n "nhap chuoi :"
read xau
dodai=`expr length $xau`

function KTDoiXung(){
	dem=1
	for ((i=0; i<dodai/2; i++)) do
		if [ ${xau:$dodai-$i-1:1} != ${xau:$i:1} ]; then
			dem=-1
		fi
	done
	if [ $dem -eq 1 ];then
		echo "mang doi xung"
	else
		echo "mang khong doi xung"
	fi
	
}
KTDoiXung



