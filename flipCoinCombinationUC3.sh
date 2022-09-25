#!/bin/bash 



declare -A Combo

Combo=([HH]=0 [HT]=0 [TH]=0 [TT]=0)

for (( i=1;$i<=50;i++ ))
do
coin1=$((RANDOM % 2))
coin2=$((RANDOM % 2))

case $coin1$coin2 in

00 ) Combo[HH]=$(( ${Combo[HH]} + 1 ))
;;
01 ) Combo[HT]=$(( ${Combo[HT]} + 1 ))
;;
10 ) Combo[TH]=$(( ${Combo[TH]} + 1 ))
;;
11 ) Combo[TT]=$(( ${Combo[TT]} + 1 ))
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


