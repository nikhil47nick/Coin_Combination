#!/bin/bash



declare -A Combo

Combo=(
[HHH]=0
[HHT]=0 
[HTH]=0 
[THH]=0 
[HTT]=0
[TTH]=0
[THT]=0
[TTT]=0)

for (( i=1;$i<=50;i++ ))
do
coin1=$((RANDOM % 2 ))
coin2=$((RANDOM % 2 ))
coin3=$((RANDOM % 2 ))

case $coin1$coin2$coin3 in

000 ) Combo[HHH]=$(( ${Combo[HHH]} + 1 ))
;;
010 ) Combo[HTH]=$(( ${Combo[HTH]} + 1 ))
;;
100 ) Combo[THH]=$(( ${Combo[THH]} + 1 ))
;;
110 ) Combo[TTH]=$(( ${Combo[TTH]} + 1 ))
;;
101 ) Combo[THT]=$(( ${Combo[THT]} + 1 ))
;;
011 ) Combo[HTT]=$(( ${Combo[HTT]} + 1 ))
;;
001 ) Combo[HHT]=$(( ${Combo[HHT]} + 1 ))
;;
111 ) Combo[TTT]=$(( ${Combo[TTT]} + 1 ))
;;

esac

done
echo ${Combo[@]}
echo ${!Combo[@]}
for j in ${!Combo[@]}
do

per=$(( $(( ${Combo[$j]} * 100 )) / $(($i - 1)) ))
Combo[$j]=$per
echo "Percentage of $j is ${Combo[$j]}"

done
echo ${Combo[@]}
