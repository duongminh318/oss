#!/bin/bash
if [ $# -ne 4 ]; then
	echo "Usage : $0 -b radix -n number or $0 -n number -b radix"
	exit 1
fi
while [ "$1" ]
	do
	if [ "$1" = "-b" ];
	then
		ob="$2"
		case $ob in
		16 ) basesystem="Hex";;
		8 ) basesystem="Oct";;
		2 ) basesystem="Bin";;
		* ) basesystem="Unknown";;
		esac
		shift 2
	elif [ "$1" = "-n" ]
	then
		num="$2"
		shift 2
		else
		echo "Program $0 does not recognize option $1"
		exit 1
	fi
done
op=$(echo "obase=$ob;ibase=10;$num;" | bc)
echo "$num Decimal number = $op in $basesystem number system (base=$ob)"
exit 0
