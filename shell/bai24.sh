#!/bin/bash
echo -n " Nhap Ten File: " 
read file

# tim quyen ghi cua file
[ -w $file ] && W="ghi=co" || W="ghi=khong"

# tim quyen thuc thi cua file
[ -x $file ] && X="thuc thi=co" || X="thuc thi=khong"

# tim quyen doc cua file
[ -r $file ] && R="doc=co" || R="doc=khong"


echo "$file hien thi quyen"
echo "$W"
echo "$R"
echo "$X"	
	





