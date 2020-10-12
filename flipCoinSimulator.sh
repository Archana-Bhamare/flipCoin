#!/bin/bash -x
head=0
tail=0
diff=0
while [[ $head -lt 21  && $tail -lt 21 ]]
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
		diff=$(($head - $tail))
		echo "Head Wins by $diff "
	elif [ $tail -eq 21 ]
	then
		diff=$(($tail - $head))
		echo "Tail Wins by $diff "
	elif [[ $head -eq 21 && $tail -eq 21 ]]
	then
		echo "It's a Tie"
		while [ $head -lt 2 -a $tail -lt 2 ]
		do
			toss1=$((RANDOM%2))
			if [ $toss1 -eq 0 ]
			then
				((head++))
			else
				((tail++))
			fi
			if [ $head -eq 2 ]
			then
				echo "Head wins"
			elif [ $tail -eq 2 ]
			then
				echo "Tail Wins"
			fi
		done
	fi
done
echo "The number of Head was : $head"
echo "The number of Tail was : $tail"
