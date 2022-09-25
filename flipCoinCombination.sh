#!/bin/bash

if [ $((RANDOM % 2)) -eq 0 ]
then
echo "Tail Wins"
else
echo "Head Wins"
fi
