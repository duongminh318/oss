#Bai 5:
echo -n "Nhap n: "
read n
if [ $n == 0 ]
then
	echo "Ket qua = 0"
	
else if [ $n == 1 ]
then
	echo "Ket qua = 1"
	
else if [ $n < 0 ]
then
	echo "N khong hop le"
else
	tong = 0
	for ((i=2; i<= $n; i++))
	do
		if [ i % 2 == 1 ] 
		then
			tong = $(($tong - $i))
		else
			tong = $(($tong + $i))
		fi
	done
	echo "Ket qua = " $tong
fi
