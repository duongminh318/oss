#Bai 6:  Tinh tong so duoc nhap

tong=0
temp=$1
while [ $temp -ne 0 ]
do
	tong=$(($tong+($temp%10)))
	temp=$(($temp/10))
done

echo "Ket qua la: $tong"
