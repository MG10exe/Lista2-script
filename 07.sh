#!/bin/bash

n1=$1
n2=$2
n3=$3
n4=$4

read -p "Digite quatro números com casas decimais:: " n1 n2 n3 n4

if (( $(echo "$n1 < $n2" |bc -l) )) && (( $(echo "$n1 < $n3" |bc -l) )) && (( $(echo "$n1 < $n4" |bc -l) ))
then
	echo "$n1 é o menor"
fi

if (( $(echo "$n2 < $n1" |bc -l) )) && (( $(echo "$n2 < $n3" |bc -l) )) && (( $(echo "$n2 < $n4" |bc -l) ))
then
        echo "$n2 é o menor"
fi

if (( $(echo "$n3 < $n1" |bc -l) )) && (( $(echo "$n3 < $n2" |bc -l) )) && (( $(echo "$n3 < $n4" |bc -l) ))
then
        echo "$n3 é o menor"
fi

if (( $(echo "$n4 < $n1" |bc -l) )) && (( $(echo "$n4 < $n2" |bc -l) )) && (( $(echo "$n4 < $n3" |bc -l) ))
then
        echo "$n4 é o menor"
fi
