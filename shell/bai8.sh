#Bai 8
i = 1
for ((i=1;i<=$1;i++))
do
	for ((n=1;n<=i;n++))
	do
		echo -n "*"
	done
	echo " "
done
echo ""	
i=1
for ((i=1;i<=$1;i++))
do
	for ((n=1;n<=i;n++))
	do
		echo -n $i
	done
	echo " "
done	
echo ""
i=1
for ((i=1;i<=$1;i++))
do
	for ((n=1;n<=i;n++))
	do
		echo -n $n
	done
	echo " "
done	
