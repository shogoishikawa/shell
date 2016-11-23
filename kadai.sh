#!/bin/bash

while true ; do
        read INPUT
        if [[ $INPUT = "" ]]; then
                break
        fi

        IN_NUM=$IN_NUM$INPUT"\n"
done
echo $IN_NUM | while read OUT_NUM; do
	#echo $OUT_NUM
	if [[ $OUT_NUM = "" ]];then
		continue
	fi

	COUNT=2
	RESULT=""
	while [ $OUT_NUM -ne 1 ]; do 
		FAC=`expr $OUT_NUM % $COUNT`
		if [[ $FAC = 0 ]]; then
			RESULT=`echo $RESULT$COUNT","`
			OUT_NUM=`expr $OUT_NUM / $COUNT`
			COUNT=2
		else
			COUNT=`expr $COUNT + 1`
		fi
	done
	echo $RESULT
done


