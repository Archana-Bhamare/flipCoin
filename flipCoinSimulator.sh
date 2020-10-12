#!/bin/bash -x

head=0
tail=0

while [[ $head -lt 21 && $tail -lt 21 ]]
do
	toss=$((RANDOM%2))
	if [ $toss -eq 0 ]
	then
		((head++))
	elif [ $toss -eq 1 ]
	then
		((tail++))
	fi
	if [ $head -eq 21 ]
	then
		echo "Head Wins by $head times"
	elif [ $tail -eq 21 ]
	then
		echo "Tail Wins by $tail times"
	elif [[ $head -eq 21 && $echo -eq 21 ]]
	then
		echo "It's a Tie"
	fi
done
echo "The number of Head was : $head"
echo "The number of Tail was : $tail"
