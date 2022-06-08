 #!/bin/sh
echo “Chuong trinh dem so dong cua tap tin $1”
{
n=0
while read line

do
          n=$(($n + 1))
done
echo “So dong cua tap tin $1 la : $n”
}<$1

 echo “Chuong trinh dem so tu cua tap tin $1”
{
n=0
while read line
do
          for wd in $line
          do
                    n=$(($n + 1))
          done
done
echo “Tong so tu cua tap tin $1 la : $n”
}<$1
exit 0 
