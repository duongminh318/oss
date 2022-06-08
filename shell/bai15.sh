#Bai 15: UCLN 2 so
#!/bin/bash
echo -n "Nhap a: "
read a
echo -n "Nhap b: "
read b

while [ $a -ne $b ]
do
	if [ $a -gt $b ]
		then
			a=$(($a-$b))

		else
			b=$(($b-$a))
	fi
done
echo "UCLN la : $a"


