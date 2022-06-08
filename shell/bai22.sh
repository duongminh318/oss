#!/bin/bash
read -p "- Nhap vao 1 chuoi bat ky: " CHUOI



if [[ -z ${CHUOI} ]]; then
	echo "chuoi nhap vao rong"
	echo "thoat"
	exit 1
fi
echo $CHUOI | grep -o "*123" | wc -l
	
	





