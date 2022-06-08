read -p"- Nhap ten thu muc muon tao:" STR
echo "So thu muc muon tao "
read n

for ((i=1; i<=n; i++)) do
	mkdir ${STR}$i 	
done


for ((i=1; i<=n; i++)) do
	if [ `expr $i % 2`  -eq 0 ]; then
		mv ${STR}$i ${STR}`expr $i - 1`
	fi
	
done
echo "da tao va di chuyen thanh cong"
