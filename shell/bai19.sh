# Title: nhap vao mot chuoi tu, dem so tu, sau do in moi tu tren 1 dong.

# Nhap input tu prompt
read -p "- Nhap vao 1 chuoi bat ki: " STRING

if [[ -z ${STRING} ]];then
	echo "-+ Chuoi nhap vao rong."
	echo "-+ Exit."
	exit 1
fi

# Dem so luong tu voi command 'wc -w'
number_word=$(echo ${STRING} | wc -w)
echo "- So luong tu: ${number_word}"

# In tung tu tren tung dong
for word in $STRING
do
	echo ${word}
done

exit 0
