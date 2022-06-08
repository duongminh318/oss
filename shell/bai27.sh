#!/bin/bash
#chua xac dinh đc duogn dan tap tin
echo -n " Nhap Ten File: " 
read file

if [ -e $file ]; then
	echo “File exists”
else
	echo “File does not exists”
fi
