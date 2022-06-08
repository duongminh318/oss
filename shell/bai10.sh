#!/bin/bash
if [ $# -lt 1 ]; then
	echo "Phai nhap it nhat 1 so."
else
	max=$1
	min=$1
	for arg
	do
		if [ $max -lt $arg ]; then
			max=$arg
		fi
		if [ $min -gt $arg ]; then
			min=$arg
		fi
	done
	echo "Max = $max"
	echo "Min = $min"
fi
