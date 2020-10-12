#!/bin/bash -x
read -p "Enter the range : " num

for ((i=0;i<num;i++))
do
	toss=$((RANDOM%2))
	if [ $toss -eq 0 ]
	then
		echo "Head Wins"
	else
		echo "Tail Wins"
	fi
done
