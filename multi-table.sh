#!/bin/sh
n=$1
m=$2
if [ $# -ne 2 ];then
	echo "invalid input"
	exit 0
fi

if [ $n -le 0 ] || [ $m -le 0 ];then
	echo "invalid input, inputs should be greater than 0"
	exit 0
fi

for i in $(seq 1 $n)
do
	for j in $(seq 1 $m)
	do 
		echo -n "$i*$j = `expr $i \* $j` \t"
	done
	echo ""
done
exit 0


