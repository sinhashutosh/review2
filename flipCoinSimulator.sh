#!/bin/bash
read -p "How Many time You Want To Flip Coin  " n;

for (( i=0; i<$n; i++ ))
do 
	flip=$((RANDOM%2));
	if [ $flip -eq 0 ]
	then
		((head++));
	else
		((tail++));
	fi

done
echo "Head won $head times ";
echo "Tail won $tail times ";
