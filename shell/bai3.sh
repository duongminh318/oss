#bai 3

declare -a a
a=( [0]=$1 [1]=$2 [2]=$3 )
max=${a[0]}
min=${a[0]}
l=${#a[*]}
for ((i=0;i<$l;i++))
do
          if [ $max -le ${a[i]} ];then
                   max=${a[i]}
          fi
done
echo "Phan tu lon nhat la: $max"
