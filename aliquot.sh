#!/bin/bash

echo -n "自然数を入力してして下さい："
read NUM

i=1
while [[ $i -le $NUM ]];do
	if [[ `expr $NUM % $i` = 0 ]];then
		echo $i
	fi
	i=$(expr $i + 1)
done

