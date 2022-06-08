#!/bin/bash
read -p "- Nhap vao 1 chuoi bat ky: " STRING




if [[ -z ${STRING} ]];then
	echo "chuoi nhap vao rong"
	echo "thoat"
	exit 1
fi

 for InHoa in $STRING
 do
 	echo ${InHoa^^}
	
done	





