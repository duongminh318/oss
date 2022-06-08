#!/bin/bash
echo "---------------------------------------"
echo "Main Menu"
echo "---------------------------------------"
echo "[1] Show today date/time"
echo "[2] Show all files in current directory"
echo "[3] Show users"
echo "[4] Show calendar"
echo "[5] Exit/Stop"
echo "---------------------------------------"
echo "Nhap so:"
read so
if [ $so -eq 1 ]
then
     echo `date +%c`
elif [ $so -eq 2 ]
then
     echo `pwd`
elif [ $so -eq 3 ]
then
     echo `whoami`
elif [ $so -eq 4 ]
then
     echo `ncal`
elif [ $so -eq 5 ]
then
     exit
else
     echo "So khong co trong Menu!"
     exit
fi
