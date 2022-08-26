#!/bin/bash
temp=21;
for (( i=0; ;i++ ))
do 
	flip=$((RANDOM%2));
	if [ $flip -eq 0 ]
	then
		((head++));
	else
		((tail++));
	fi
	if [ $head -eq $temp ]
	then
		echo "Head won by $((head-tail))";
			echo "Head = "$head;
			echo "Tail = "$tail;
		exit;
	fi
	if [ $tail -eq $temp ]
	then
		echo "Tail won by $((tail-head))";
			echo "Head = "$head;
			echo "Tail = "$tail;
		exit;
	fi
	if [ $head -eq $tail ]
	then
		echo "Game Tie ";
		echo "Head = "$head;
		echo "Tail = "$tail;
		exit;
	fi

done
