#!/bin/bash 

declare -A Coin 
Coin=([H]=0 [T]=0)

for ((i=1;$i<=10;i++))
do
count=$(($count + 1))

coin=$((RANDOM % 2))

case $coin in

0 ) Coin[H]=$(( ${Coin[H]} + 1 ))
;;
1 ) Coin[T]=$(( ${Coin[T]} + 1 ))
;;
esac

done

echo "Head Won ${Coin[H]} with  $(( $(( ${Coin[H]} * 100 )) / $i )) Percent"
echo "Tail won ${Coin[T]} with  $(( $(( ${Coin[T]} * 100 )) /$i )) Percent"
