#!/bin/bash
#Bai 2: Phep toan
if test $#=3
then
	case $2 in
		+) let z=$1+$3;;
		-) let z=$1-$3;;
		/) let z=$1/$3;;
		x|X) let z=$1*$3;;
		*) echo $2 khong hop le. Dung +, -, x, /.
		exit;;
	esac
	echo $1 $2 $3 = $z
fi
