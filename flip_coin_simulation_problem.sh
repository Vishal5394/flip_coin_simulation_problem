#!/bin/bash

read -p "Enter no of times to toss: " n
heads_count=0
tails_count=0
for(( i = 1; i -le n; i++ ))
do
    toss=$(( RANDOM % 2 ))
    if(( toss -eq 0 ))
    then
        echo "Flip-$i Heads"
        (( heads_count++ ))
    else
        echo "Flip-$i Tails"
        (( tails_count++ ))
    fi 
done
echo "The Heads count is $heads_count and Tails Count is $tails_count"
if(( heads_count -gt tails_count ))
then
    echo "Winner is Heads"
elif(( tails_count -gt heads_count ))
then
    echo "Winner is Tails"
else    
    echo "Its tie"
fi
