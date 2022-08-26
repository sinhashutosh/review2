#!/bin/bash
temp=21;
head=0;
tail=0;
for (( i=0; ;i++ ))
do 
	flip=$((RANDOM%2));
	if [ $flip -eq 0 ]
	then
		((head++));
	else
		((tail++));
	fi
	if [ $head -eq $tail ]
	then
		echo "Game Tie ";
		continue;
	fi
	check=$((head-tail));
	if [ $check -eq -2 ]
	then
		echo "HEAD = "$head;
		echo "TAIL ="$tail;
		exit 0;
	fi
	if [ $check -eq 2 ]
	then
		echo "HEAD = "$head;
		echo "TAIL ="$tail;
		exit 0;
	fi
	if [ $head -eq $temp ]
	then
		echo "Head won by $((head-tail))";
		echo "HEAD = "$head;
		echo "TAIL ="$tail;
		exit;
	fi
	if [ $tail -eq $temp ]
	then
		echo "Tail won by $((tail-head))";
			echo $head;
			echo $tail;
		exit;
	fi
done
	echo $head;
	echo $tail;